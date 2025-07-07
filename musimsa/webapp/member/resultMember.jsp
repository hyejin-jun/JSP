<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>회원 정보</title>
<style>
/* 폰트 선언 */
@font-face {
    font-family: 'MabinogiClassicR';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2207-01@1.0/MabinogiClassicR.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}

/* 전체 body에 폰트 적용 */
body {
    font-family: 'MabinogiClassicR', sans-serif;
}

/* 메시지 텍스트 스타일 - 배경, 테두리 없음 */
.message-text {
    font-weight: 700;
    font-size: 1.4rem;
    margin: 20px auto;
    color: #444;
    text-align: center;
}

/* 메시지 유형별 색상만 지정 */
.message-danger { color: #000000; }   
.message-success { color: #000000; }  
.message-info { color: #000000; }      
.message-warning { color: #000000; }   
</style>
</head>

<body>

<div class="container py-4">
   <jsp:include page="/menu.jsp" />

 <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
<%
    String msg = request.getParameter("msg");
    if (msg != null && (msg.equals("0") || msg.equals("2"))) {
%>
    <h1 class="display-5 fw-bold">회원 정보</h1>
    <p class="col-md-8 fs-4">Membership Info</p>
<%
    } else if ("1".equals(msg)) {  // 이 방법도 null 안전
%>
    <h1 class="display-5 fw-bold">회원 가입</h1>
    <p class="col-md-8 fs-4">Membership Joining</p>
<%
    }
%>
      </div>
    </div>
	

	 <div class="row align-items-md-stretch   text-center">
<div class="row align-items-md-stretch text-center">
<%
    if (msg != null) {
        if (msg.equals("0")) {
%>
            <p class="message-text message-danger">회원정보가 수정되었습니다.</p>
<%
        } else if (msg.equals("1")) {
%>
            <p class="message-text message-success">회원가입을 축하드립니다.</p>
<%
        } else if (msg.equals("2")) {
            String loginId = (String) session.getAttribute("sessionId");
%>
            <p class="message-text message-info"><%= loginId %>님 환영합니다</p>
<%
        } else if (msg.equals("3")) {
%>
            <p class="message-text message-warning">회원정보가 삭제되었습니다.</p>
<%
        }
    } else {
%>
        <p class="message-text">처리된 메시지가 없습니다.</p>
<%
    }
%>
</div>
	</div>	
</div>	
</body>
</html>