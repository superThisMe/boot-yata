package com.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yata.vo.ReserveVO;
import com.yata.vo.ReturnVO;

@Mapper
public interface ReserveMapper {

	List<ReserveVO> findReserveByUserNum(int userNum);

	List<ReserveVO> findReserves();
	
	void insertReserve(ReserveVO res);

	void returnCar(int resNum);

	int selectNotReturnHistory(int userNum);

	void returnCar2(int resNum);

	List<ReturnVO> selectReturnList();

	void updateResAccept(int resNum);

	int selectAllReserves();

}