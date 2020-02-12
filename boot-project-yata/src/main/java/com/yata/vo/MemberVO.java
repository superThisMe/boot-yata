package com.yata.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class MemberVO {
	
	private int userNum;
	private String userPhoto;
	private String userEmail;
	private String userPasswd;
	private String userName;
	private String userBirth;
	private String userPhone;
	private String userPostcode;
	private String userAddr;
	private String userDetailaddr;
	private String userRefaddr;	
	private Date userRegdate;
	private String userType;
	private String userDrivenum;
	private boolean userActive;
	private String userKey;
	private boolean deleted;
	private String userGrade;
	
	private List<PointVO> points;
	
}
