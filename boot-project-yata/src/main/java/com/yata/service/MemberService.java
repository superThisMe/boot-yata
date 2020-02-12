package com.yata.service;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.yata.vo.MemberVO;
import com.yata.vo.PointVO;

public interface MemberService {
//	<!-- 1.13 수정 -->
	void registerMember(MemberVO member) throws Exception;
	
	void insertPoint(PointVO point);

	MemberVO selectMemberByEmailAndPasswd(MemberVO member);
	
	String create_key() throws Exception;
	
	void send_mail(MemberVO member) throws Exception;

	void approval_member(MemberVO member, HttpServletResponse resp) throws Exception;

	void modifyMember(MemberVO member);

	List<MemberVO> findMember(MemberVO member);

	void deleteUser(MemberVO member);

	void findPoint(MemberVO member);

	MemberVO findEmail(MemberVO member);

	MemberVO findPhone(MemberVO member);

	void updatePasswd(MemberVO member);

	int countAllUsers();

}