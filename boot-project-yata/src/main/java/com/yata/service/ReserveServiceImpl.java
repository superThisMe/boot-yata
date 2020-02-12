package com.yata.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yata.mapper.MemberMapper;
import com.yata.mapper.ReserveMapper;
import com.yata.vo.PointVO;
import com.yata.vo.ReserveVO;
import com.yata.vo.ReturnVO;

@Service("resService")
public class ReserveServiceImpl implements ReserveService {
	
	@Autowired
	private ReserveMapper reserveMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Autowired
	private CarService carService;

	@Override
	public List<ReserveVO> findReserveByUser_num(int userNum) {
		
		return reserveMapper.findReserveByUserNum(userNum);
	}

	@Override
	public List<ReserveVO> findReserves() {
		return reserveMapper.findReserves();
	}

	@Override
	public void addReserve(ReserveVO res, int totalPoint, int activePoint) {
		
		reserveMapper.insertReserve(res);
		
		long curDateTime = res.getResEndDate().getTime() - res.getResStartDate().getTime();
		long curDate = curDateTime / (24 * 60 * 60 * 1000);
		System.out.printf("대여기간: %d일", curDate);
		
		int price = carService.findCarNum(res.getCarNum()).getCarPrice();
		System.out.printf("대여가격: %s", price);
		
		int totalPrice = (int)curDate * price;
		
		PointVO point = new PointVO();
		point.setUserNum(res.getUserNum());
		point.setChangePoint(totalPrice);
		point.setTotalPoint(totalPoint);
		point.setActivePoint(activePoint - totalPrice);
		
		memberMapper.insertPoint(point);
		
	}

	@Override
	public void returnCar(int resNum) {
		reserveMapper.returnCar(resNum);
		reserveMapper.returnCar2(resNum);
		
	}

	@Override
	public int searchNotReturnMemberByUserNum(int userNum) {
		return reserveMapper.selectNotReturnHistory(userNum);
		
	}

	@Override
	public List<ReturnVO> findReturnList() {

		return reserveMapper.selectReturnList();
	}

	@Override
	public void setReturnAccept(int resNum) {
		reserveMapper.updateResAccept(resNum);
		
	}

	@Override
	public int countAllReserves() {
		return reserveMapper.selectAllReserves();
	}

}
