package com.yata.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BoardVO {

	private int brdNum;
	private String brdTitle;
	private String brdWriter;
	private String brdContent;
	private Date brdRegdate;
	private int brdReadcount;
	private boolean brdDel;
	private int userNum;


	
}
