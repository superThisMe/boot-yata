package com.yata.vo;

import java.util.Date;
import java.util.List;

import lombok.Data;

@Data
public class CarVO {

	private int carNum;
	private String carFuel;
	private String carManual;
	private String carContent;
	private int carPrice;
	private Date carDate;
	
	private CarTypeVO carType;
	private List<CarPhotoVO> carPhotos;
	
}
