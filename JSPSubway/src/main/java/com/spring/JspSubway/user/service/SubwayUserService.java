package com.spring.JspSubway.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.JspSubway.command.UserVO;
import com.spring.JspSubway.user.mapper.ISubwayUserMapper;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class SubwayUserService implements ISubwayUserService {

	@Autowired
	private ISubwayUserMapper mapper;
	
	// 회원가입
	@Override
	public void join(UserVO vo) {
		mapper.join(vo);
	}
	
	// 로그인 요청
	@Override
	public String login(String id, String pw) {
		mapper.login(id);
		log.info("id : " + id);
		return id;
	}
	
	// 아이디 중복 확인
	@Override
	public int idCheck(String id) {
		log.info("id : " + id);
		return mapper.idCheck(id);
	}
	
	// 이름 불러오기
	@Override
	public String getUserName(String id) {
		return mapper.getUserName(id);
	}
	
}
