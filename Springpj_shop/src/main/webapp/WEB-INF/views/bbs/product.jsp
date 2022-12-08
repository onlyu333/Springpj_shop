<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../top.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="${pageContext.request.contextPath}/resources/css/shopping.css"
	rel="stylesheet" />
	
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/35.3.2/classic/ckeditor.js"></script>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" 
	 rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

	<div id="main">
		<section>
			<form action="pGetAction" method="post" id="pForm">
				<div id="productGet">
					<div>
							<h1>상품등록</h1>
						</div>
						<div class="mb-3">
						<label for="formGroupExampleInput" class="form-label">상품명</labal>
							<input class="productname form-control" id="formGroupExampleInput1" type="text" name="pname"> 
									</div>
						<div class="mb-3">		
							<label for="formGroupExampleInput" class="form-label">브랜드명</labal>
							<input class="productid form-control" id="formGroupExampleInput2" type="text" name="brand"> 
								<span class="idError1" style="display: none; color: green;">사용가능한 아이디 입니다.</span> 
								<span class="idError2" style="display: none; color: red;">아이디가 이미 존재합니다.</span> 
								<span class="idError3" style="display: none; color: red;">4~12자 영문 대소문와 숫자로 입력</span>
						</div>
						<div class="mb-3">	
							<labal for="formGroupExampleInput" class="form-label">가격</labal>
							<input class="price form-control" id="formGroupExampleInput3" type="text" name="price">
						</div>
						<div class="col-sm">	
							<labal for="formGroupExampleInput" class="form-label">재고량</labal>
							<input class="stock form-control" type="text" id="formGroupExampleInput4" name="stock"><br>
						</div>
						<div class="col-sm" style="height: 170px;">	
							<labal for="formGroupExampleInput" class="form-label">상품정보</labal>
							<textarea name="Intro" id="Intro_textarea"></textarea>
						</div>
						<div class="col-sm" style="height: 170px;">	
							<labal for="formGroupExampleInput" class="form-label">상품설명</labal>
							<textarea name="Contents" id="Contents_textarea"></textarea>
						</div>

						<div class="col-12"><button id="cencelBtn" class="btn btn-primary" >취소하기</button><button type="submit" class="btn btn-primary" >등록하기</button></div>
						

					
				</div>
			</form>
		</section>
		<footer>
			<div id="joo">
				<p>
					예스이십오(주)<br> 경기도 수원시 팔달구 중부대로 100 3층<br> 고객문의<br>
					1544-0000<br>
				</p>
			</div>
		</footer>
	</div>
	<script type="text/javascript">
	let Form = $("#pForm")
	
	/* 취소 버튼 */
	$("#cancelBtn").click(function(){
		
		location.href="/admin/goodsManage"
		
	});
/* 	상품 등록 버튼 
	$("#enrollBtn").on("click",function(e){
		
		e.preventDefault();
		
		Form.submit();
		
	}); */
	$(document).ready(function(){
		
		let eResult = '<c:out value="${enroll_result}"/>';
		
		checkResult(eResult);
		
		function checkResult(result){
			
			if(result === ''){
				return;
			}
			
			alert("상품'"+ eResult +"'을 등록하였습니다.");
			
		}

	});
	
	ClassicEditor
	.create(document.querySelector('적용대상 선택자'))
	.catch(error=>{
		console.error(error);
	});
	/* 위지윅 적용 */
	 
	/* 책 소개 */
	ClassicEditor
		.create(document.querySelector('#Intro_textarea'))
		.catch(error=>{
			console.error(error);
		});
		
	/* 책 목차 */	
	ClassicEditor
	.create(document.querySelector('#Contents_textarea'))
	.catch(error=>{
		console.error(error);
	});
		</script>
</body>

</html>