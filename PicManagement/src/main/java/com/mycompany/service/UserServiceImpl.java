package com.mycompany.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.mycompany.domain.LoginDTO;
import com.mycompany.domain.UserVO;
import com.mycompany.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	private UserDAO dao;
	
	
	@Override
	public void insertUser(UserVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.insertUser(vo);
	}



	@Override
	public List<UserVO> checkID() throws Exception {
		// TODO Auto-generated method stub
		
		return dao.checkID();
	}

	
	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(dto);
	}


	@Override
	public void addAttach(UserVO vo) throws Exception {
		
			dao.addAttach(vo);
			
	}



	@Override
	public List<String> getAttach(String uid) throws Exception {
		return dao.getAttach(uid);
		
	}



	@Override
	public void delAttach(String fullname) throws Exception {
		// TODO Auto-generated method stub
		dao.delAttach(fullname);
	}

	
}
