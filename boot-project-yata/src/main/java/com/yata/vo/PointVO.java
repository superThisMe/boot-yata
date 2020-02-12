package com.yata.vo;

import java.util.Date;

import lombok.Data;

@Data
public class PointVO {

	private int userNum;
	private int activePoint;
	private int totalPoint;
	private int changePoint;
	private Date pointDate;
	
}
