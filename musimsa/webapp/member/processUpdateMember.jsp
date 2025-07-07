<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    request.setCharacterEncoding("UTF-8");

    String name    = request.getParameter("name");
    String id      = request.getParameter("id");
    String password= request.getParameter("password");
    String mail1   = request.getParameter("mail1");
    String mail2   = request.getParameter("mail2");
    String mail    = mail1 + "@" + mail2;
    String address = request.getParameter("address");
    String phone   = request.getParameter("phone");
    String gender  = request.getParameter("gender");
%>

<sql:setDataSource var="dataSource"
    url="jdbc:mysql://localhost:3306/musimsa"
    driver="com.mysql.jdbc.Driver"
    user="musimsa_login"
    password="1234" />

<sql:update var="result" dataSource="${dataSource}">
    UPDATE member
    SET name=?, id=?, password=?, email=?, address=?, phone=?, gender=?
    WHERE id=?
    <sql:param value="<%= name %>" />
    <sql:param value="<%= id %>" />
    <sql:param value="<%= password %>" />
    <sql:param value="<%= mail %>" />
    <sql:param value="<%= address %>" />
    <sql:param value="<%= phone %>" />
    <sql:param value="<%= gender %>" />
    <sql:param value="<%= id %>" />
</sql:update>

<c:if test="${result >= 1}">
    <c:redirect url="resultMember.jsp?msg=0" />
</c:if>
