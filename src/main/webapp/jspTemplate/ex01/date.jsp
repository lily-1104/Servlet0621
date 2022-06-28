<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    	<%--  맨 위에 두줄 빼고 전부 삭제  --%>
    	
	<%-- 임포트 --%> 	
<%@ page import="java.util.Date" %> 
<%@ page import="java.text.SimpleDateFormat" %> 


<%
	Date now = new Date();	// 임포트
	SimpleDateFormat formatter = new SimpleDateFormat("hh시 mm분 ss초");	// 임포트
	
	String dateString = formatter.format(now);
	
%>

<div><%= dateString %> </div>