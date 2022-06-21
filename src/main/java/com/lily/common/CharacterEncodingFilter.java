package com.lily.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

// 거쳐갈 페이지 url 패턴
@WebFilter("/*")	// '/*' 가 모든 페이지를 처리한다는 뜻, 임포트하기
public class CharacterEncodingFilter implements Filter {	
					// implements Filter 입력 -> 임포트 -> javax.servlet.Fliter 선택하기
	
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// request, response 문자 인코딩 설정
		request.setCharacterEncoding("utf-8");	// add throws~ 클릭
		response.setCharacterEncoding("utf-8");
		
		chain.doFilter(request, response);	 // add throws~ 클릭
	}

}
