package com.yata.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReserveVO {
	
	private int resNum;
	private int userNum;	
	private int carNum;
	private int resPrice;
	private Date resStartDate;	
	private Date resEndDate;
	private boolean resCancel;
	private MemberVO member;
	private CarVO car;
}



