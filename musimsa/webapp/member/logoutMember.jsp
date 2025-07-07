<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%
    // 세션 무효화
    session.invalidate();
    // 로그인 페이지로 리다이렉트 (또는 메인으로)
    response.sendRedirect("loginMember.jsp");  // ← 로그인 페이지 경로로 변경 가능
%>