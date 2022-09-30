<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
 <% String context = request.getContextPath(); %>
<c:import url="${context}/sh/header.jsp"></c:import>
<meta charset="UTF-8">
<title>게시글 수정</title>
 <link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
 <link rel="stylesheet" href="<%=context %>/css/sh/qnamain.css">
 <link rel="stylesheet" href="<%=context%>/css/sh/qnaUpdate.css">

<header class="py-5 mb-5"
	style="background-image: url('<%=context %>/sh_images/jeju_air44.jpg'); background-size: cover; margin-top: 150px;">
	<div class="container px-4 px-lg-5 mt-5 mb-5">
		<div class="text-center text-white">
			<h3 class="display-5 fw-bolder">QnA게시판</h3>
			<p class="lead fw-normal text-white-50 mb-0">여행에 대한 질문을 해보세요</p>
		</div>
	</div>
</header>

<body>


<form action="<%=context %>/qnaUpdatePro.do">
	<input type="hidden" name="b_num" value="${board.b_num }">
		
		<!-- 테마 -->
		<div class="tag">
			<div class="form-check form-check-inline" >
			  <input class="form-check-input" type="radio" name="b_theme" id="inlineRadio1" value="숙박" required="required">
			  <label class="form-check-label" for="inlineRadio1">숙박</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="b_theme" id="inlineRadio1" value="레저" required="required">
			  <label class="form-check-label" for="inlineRadio1">레저</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="b_theme" id="inlineRadio1" value="맛집" required="required">
			  <label class="form-check-label" for="inlineRadio1">맛집</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="b_theme" id="inlineRadio1" value="카풀" required="required" style="margin-right: auto">
			  <label class="form-check-label" for="inlineRadio1">카풀</label>
			</div>
		</div>
			
		<!-- 제목 -->
		<div class="mb-3" style="width: 1200px; margin-left: auto; margin-right: auto;"> 	 		
  			<input type="text" name="b_title" value="${board.b_title }" class="form-control card-title" style="height: 60px">
		</div>	
		
		<!-- 내용 -->
		<div style="display: flex; justify-content: center;" >
	  		<textarea  name="b_content"  style="width: 1200px; height: 700px ;border-color:#ced4da  ;">${board.b_content }</textarea>	  		
		</div>
		<br>	
		
		<!-- 버튼 -->
		<div class="button" style="display: flex; justify-content: center;">
			<input type="reset" value="취소" class="btn btn-secondary" style="margin-right: 15px; width:590px; height: 55px;background-color: #dbdbdb; border-color: #dbdbdb;font-size: 14px;font-weight: bolder;">
			<input type="submit" value="완료" class="btn btn-success" style="width:590px;height: 55px;  background-color: #FF3500;border-color: #FF3500;font-size: 14px;font-weight: bolder;">
		</div>
		<br>	


</form>

<c:import url="${context}/footer.jsp"></c:import>
</body>
</html>