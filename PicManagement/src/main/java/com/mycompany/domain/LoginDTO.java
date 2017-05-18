package com.mycompany.domain;

public class LoginDTO {
	
	private String uid;
	private String upw;
	
	@Override
	public String toString() {
		return "LoginDTO [uid=" + uid + ", upw=" + upw + "]";
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}
	
	
	

}
