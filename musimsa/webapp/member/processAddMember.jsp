<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");


String name = request.getParameter("name");
if (name == null || name.trim().equals("")) {
    out.println("이름을 입력해주세요!");
    return;
}



    String id = request.getParameter("id");
    String password = request.getParameter("password");

    String mail1 = request.getParameter("mail1");
    String mail2 = request.getParameter("mail2");
    String email = mail1 + "@" + mail2;

    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String gender = request.getParameter("gender");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/musimsa",
            "musimsa_login",
            "1234"
        );

        String sql = "INSERT INTO member (name, id, password, email, address, phone, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);

        pstmt.setString(1, name);
        pstmt.setString(2, id);
        pstmt.setString(3, password);
        pstmt.setString(4, email);
        pstmt.setString(5, address);
        pstmt.setString(6, phone);
        pstmt.setString(7, gender);

        int result = pstmt.executeUpdate();

        if (result > 0) {
            response.sendRedirect("resultMember.jsp?msg=1");
        } else {
            out.println("회원가입 실패");
        }

    } catch (Exception e) {
        out.println("에러 발생: " + e.getMessage());
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>