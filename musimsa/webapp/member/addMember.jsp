<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
<title>회원 가입</title>
</head>
<body>
<div class="container py-4">
   <jsp:include page="/menu.jsp" />

 <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">회원 가입</h1>
        <p class="col-md-8 fs-4">Membership Joining</p>      
      </div>
    </div>
			  <div class="row align-items-md-stretch   text-center">
			  		<form name="newMember"  action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
				<div class="mb-3 row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="이름" >
				</div>
			</div>
			
   <div class="row align-items-md-stretch   text-center">
		<form name="newMember"  action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
			<div class="mb-3 row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="아이디" >
				</div>
			</div>
			
			
			<div class="mb-3 row">
				<label class="col-sm-2">비밀번호</label>
				<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
				<div class="col-sm-3">
					<input name="password" type="password" class="form-control" placeholder="비밀번호" >
				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">비밀번호확인</label>
				<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
				<div class="col-sm-3">
					<input name="password_confirm" type="password" class="form-control" placeholder="비밀번호 재확인" >
				</div>
			</div>
			
		<div class="mb-3 row">
			<label class="col-sm-2">이메일</label>
			<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
				<div class="col-sm-10">
				  <div class="row">
					<div class="col-sm-4">
						<input type="text" name="mail1" maxlength="50" class="form-control"  placeholder="이메일">
					</div> @
					<div class="col-sm-3">
						 <select name="mail2" class="form-select">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>
						</select>
					</div>
				</div>		
			</div>		
		</div>
		<div class="mb-3 row">
				<label class="col-sm-2 ">주소</label>
				<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control" placeholder="주소">

				</div>
			</div>
			
			<div class="mb-3 row">
				<label class="col-sm-2">전화번호</label>
				<form name="newMember" action="processAddMember.jsp" method="post" onsubmit="return checkForm()">
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" placeholder="전화번호" >

				</div>
			</div>
			<div class="mb-3 row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-2">
					<input name="gender" type="radio" value="남" /> 남 
					<input name="gender" type="radio" value="여" /> 여
				</div>
			</div>
			
		
		
			

	
			<div class="mb-3 row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" value="등록" style="background-color:black; color:white; border:none;" class="btn">
					<input type="reset" value="취소" onclick="reset()" style="background-color:black; color:white; border:none;" class="btn">
				</div>
			</div>
		</form>
	</div>
	
		   <jsp:include page="/footer.jsp" />  
  </div>	
</body>
</html>