package com.mycompany.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class UploadFileUtils {
	private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);
	
	public static String makeThumbnail(String uploadPath, String filename) throws IOException{
		String thumbnailName = "";
		
		//원본 이미지 가져오기...
		BufferedImage sourceImg = ImageIO.read(new File(uploadPath,filename));
		
		//썸네일 이미지 데이터 만들기
		BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,100);
		
		
		//c:/zzz/upload/2017/
		thumbnailName = uploadPath + "/" + "s_" + filename;
		
		File newFile = new File(thumbnailName);
		String format = filename.substring(filename.lastIndexOf(".") + 1);
		
		//Thumnail 경로/ 파일 이름에 resizeing된 이미지를 넣는다.
		ImageIO.write(destImg, format.toUpperCase(), newFile);
		
		return "s_" + filename;
	}
	
	//upload하면 thumbnail도 만듬..
	public static String uploadFile(String uploadPath,  //c:/zzz/upload 
									String originalName, //aaa.png
									byte[] fileData) throws Exception{   //file data
		
		
		//....................
		// UPLOAD 부분
		//.....................
		UUID uid = UUID.randomUUID();// 고유한 키 이름
		String savedName = uid.toString() + "_" + originalName;
	
		//한 폴더에 저장할 수 있는 용량이 제한되어 있으므로 날짜별로 업로드가 되도록 처리..
		String savedPath = calcPath(uploadPath); //최정 저장될 날짜 폴더 리턴해줌..
		
		
		//저장경로..
		File target = new File(uploadPath + savedPath, savedName);
		FileCopyUtils.copy(fileData, target);// file upload됨
		
		//----------------------
		//Thumbnail부분
		//---------------------
		String thumFile = UploadFileUtils.makeThumbnail(uploadPath+savedPath, savedName);
		
		
		//thumbnail이미지 경로 return
		
		return savedPath + "/" + thumFile;
	}
	
	private static String calcPath(String uploadPath){
		
		Calendar cal = Calendar.getInstance();
		
		String yearPath = "/" + cal.get(Calendar.YEAR);
		
		String monthPath = String.format("%s/%02d", yearPath, cal.get(Calendar.MONTH) + 1);
		
		String datePath  = String.format("%s/%02d", monthPath, cal.get(Calendar.DATE) );
		
		makeDir(uploadPath, yearPath, monthPath, datePath);
		
		return datePath;
		
	}
	
	public static void makeDir(String uploadPath, String ...paths){
		
		for(String path : paths){
			File dirPath = new File(uploadPath + path);
			
			if(!dirPath.exists()){
				dirPath.mkdirs();
			}
		}
	}
}
