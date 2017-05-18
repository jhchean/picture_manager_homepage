package com.mycompany.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mycompany.domain.LoginDTO;
import com.mycompany.domain.UserVO;
import com.mycompany.service.UserService;



@Controller
@RequestMapping("/user/*")
public class JoinController {
	
	@Inject
	private UserService service;
	
	private static final Logger logger = LoggerFactory.getLogger(JoinController.class);
	
	
	// RequestMapping("/board/*") 인 경우, http://localhost:8080/ProjcetManger/board/ 호출시 
	// /ProjcetManger/WEB-INF/views/board.jsp를 찾으려고하는데..
	// "/board/" + "/" + ".jsp" 이기 때문에 .. 
	
		
	@RequestMapping(value="/join",method=RequestMethod.POST)
	public String insertUser(UserVO vo,RedirectAttributes rttr ) throws Exception{
		service.insertUser(vo);
		rttr.addFlashAttribute("result","success");
		return "redirect:/";
	}
	
	@RequestMapping(value="/joinResult",method=RequestMethod.GET)
	public void joinResult(Model model) throws Exception{
		
	}
	
	
	/* CHECK ID */
	@ResponseBody  /*responseEntity 쓰면서 값만 전달*/ 
	@RequestMapping(value = "check/{uid}",method=RequestMethod.GET)
	public ResponseEntity<String> checkID(@PathVariable("uid")String uid){
		logger.info("checkID>>>>>>>>>>>>>>>>>>>>>>>>>>"+uid);
		ResponseEntity<String> result = null;
		
		try {
			List<UserVO> vo = service.checkID();
			boolean bSame = false; 	
				for(int i=0;i<vo.size();i++){
					
					//logger.info(">>>>>>>>>>>>>"+vo.get(i).getUid());
					if(uid.equals(vo.get(i).getUid())){//사용중인 아이디가 있음. 사용불가								
						
						bSame = true;
						break;
					}
					
				}
				if(bSame == true){ //중복 아이디 발생. 사용불가				
					result = new ResponseEntity<String>("FAIL",HttpStatus.OK);
				}else{
					result = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
				}
				
				
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	@RequestMapping(value="logout",method=RequestMethod.GET)
	public String loginGet(HttpSession session){
		
		session.removeAttribute("KEY");
		//username 으로 들어온 session을 제거		
		 return "redirect:/";
	}
	
	
	
	@RequestMapping(value="loginPost",method=RequestMethod.POST)
	public String loginPOST(LoginDTO dto,RedirectAttributes rttr,HttpSession session)throws Exception{
		
		Object vo = service.login(dto);
		//logger.info(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+vo.toString());
		if(vo == null){
			rttr.addFlashAttribute("loginCond","FAIL");
			logger.info("......................... login fail");			
			return "redirect:/";
		}//값이 없다면은 저장 안하고 이동 // 있다면은 저장하고 이동 
		//loginPost로 이동..
		logger.info("......................... login success");
		//rttr.addAttribute("userVO",(UserVO)vo);
		//model.addAttribute("userVO", vo);
		session.setAttribute("KEY", ((UserVO)vo).getUname());
		rttr.addFlashAttribute("loginCond","SUCCESS");
		//return "loginPost";
		return "redirect:/";
	}
}