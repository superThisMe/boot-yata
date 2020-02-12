package com.yata.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.yata.vo.BoardVO;
import com.yata.vo.ReviewVO;

@Mapper
public interface BoardMapper {

	void insertBoard(BoardVO board);

	List<BoardVO> showList();

	BoardVO selectBoardByBrdNum(int brdNum);

	void deleteBoard(int brdNum);

	void updateBoard(BoardVO board);
	
	List<ReviewVO> reviewList();

	ReviewVO reviewDetail(int revNum);
	
}