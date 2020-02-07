package com.yata.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReturnVO {
	
	private int resNum;
	private boolean resCancel;	
	private Date realtime;
	private boolean accept;
	private boolean revaccept;
	private int inner;	
	private int outer;
	
}



