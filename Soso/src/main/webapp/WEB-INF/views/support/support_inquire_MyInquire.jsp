<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/support_inquire</title>
<style>
	/*폭 조정*/
	#content{
		min-width: 1280px;
	}
	/*상단 배너*/
	.head{
		background-image: url("https://static.onoffmix.com/images/pc/default/inquire_bg.png");
		height:360px;
		background-size: cover;
		overflow: hidden;
		display: block;
	}
	h2.main_title{
		margin: 116px auto 20px;
		text-align: center;
		font-size: 46px;
		padding:7px 0;
	}
	p.sub_text{
		text-align: center;
		font-size: 20px;
	}
	/*메인 메뉴바 주석*/
	.menu_bar{
		width:100%;
		height:80px;
		box-sizing: border-box;
		background-color: #333;
		text-align: center;
	}
	.menu_bar li[class^="menu_"]{
		margin: 0 40px;
		display: inline-block;
		cursor: pointer;
	}
	.menu_bar li[class^="menu_"]>a{
		display: block;
		color: white;
		font-size: 20px;
		height: 80px;
		line-height: 78px;
	}
	/* 바디 폭 조정 */
	.body_area{
		position: relative;
		box-sizing: border-box;
		width: 1280px;
		margin: 0 auto;
	}
	/* 메인 컨텐츠 */
	.main_content{
		margin: 100px auto 90px;
		box-sizing: border-box;
		width: 100%;
		min-height: 260px;
	}
	/* 문의사항 네비바*/
	.inquire_navi{
		width: 100%;
		height: auto;
		margin-bottom: 80px;
		box-sizing: border-box;
		font-size:0;
		text-align: center;
	}
	.inquire_navi li{
		width: 320px;
		height: 50px;
		display: inline-block;
		box-sizing: border-box;
	}
	.inquire_navi li a{
		width: 100%;
		height: 100%;
		padding-top: 16px;
		box-sizing: border-box;
		font-size: 16px;
		display: block;
		border: 1px solid gray;
		border-right: none;
		color:black;
	}
	.inquire_navi li a.my_inquire{
		border-right: 1px solid gray;
	}
	/* 폼양식 */
	.area_form{
		margin: 14px 0 0;
		border-top: 2px solid black;
		font-sizea: 14px;
	}
	.area_form .row-wrap{
		padding: 20px 50px;
		width: 100%;
		height: auto;
		border-bottom: 1px solid gray;
		box-sizing: border-box;
		overflow: hidden;
	}
	.area_form input{
		width: 300px;
		height: 48px;
		padding: 0 20px;
		background-color: #fff;
		font-size: 14px;
	}
	input[type="text"], input[type="email"], 
	input[type="password"], input[type="number"], 
	input[type="tel"] {
		box-sizing: border-box;
		border: 1px solid gray;
		color: #333333;
		vertical-align: middle;
	}
	.input_name, .input_phone{
		float: left;
		width:50%;
	}
	h4.label{
		display: inline-block;
		width: 120px;
		font-size:16px;
		line-height: 48px;
		font-weight: normal;
		letter-spacing: -1px;
		vertical-align: top;
	}
	.area_form .row_wrap>div {
	    width: 100%;
	    height: auto;
	    position: relative;
	}
	.area_form .row-wrap >div .tip_txt {
    	padding-left: 20px;
    	display: inline-block;
    	font-size: 14px;
	}
	.area_form select {
	    width: 160px;
	    height: 48px;
	    margin-right: 5px;
	    padding: 0 20px;
	    border: 1px solid #ccc;
	    color: #999;
	    vertical-align: middle;
	    cursor: pointer;
	    appearance: none;
	    -webkit-appearance: none;
	    -moz-appearance: none;
	    background: #fff url("https://static.onoffmix.com/images/pc/svg/arrow_down.svg") no-repeat right 21px center;
	}
	.area_form .input_title .inquire_title{
		width: 880px;
	}
	.area_form textarea{
		width: 1050px;
		height: 200px;
		padding: 20px;
		font-size: 14px;
		line-height: 20px;
	}
	.input_file .file_box{
		width: 1050px;
		display: inline-block;
	}
	.input_file .btn_upload {
	    float: left;
	    width: 160px;
	    height: 48px;
	    line-height: 46px;
	    border-radius: 0;
		border-color: #d8d8d8;
		border: 1px solid gray;
	    background-color: #f7f7f7;
	    color: #333333;
	    font-size: 14px;
	    vertical-align: middle;
	    letter-spacing: normal;
	    text-align: center;
	    cursor: pointer;

	}
	.input_file input.upload_file {
	    width: 880px;
	    height: 48px;
	    float: right;
	    color: #666666;
	    background-color: #ffffff;
	}
	.input_file .file_wrap {
	    margin-top: 10px;
	    margin-left: 294px;
	    font-size: 12px;
	}
	.input_file .file_wrap .tip_file{
		color: gray;
	}
	.area_form .row-wrap:last-of-type {
    border: none;
    border-bottom: 2px solid #333;
	}
	.input_agreement h4.label {
    line-height: 1.5em;
	}
	.input_agreement label {
    padding-left: 36px;
    line-height: 72px;
	}
	label {
    cursor: pointer;
	}
	.input_agreement label input[type="checkbox"] {
    vertical-align:middle;
    width: 26px;
    height: 26px;
    box-sizing: border-box;
    border: 1px solid #d8d8d8;
    background-color: #fff;
	}
	.area_form input.btn_submit {
	    width: 240px;
	    height: 60px;
	    margin: 0 auto;
	    display: block;
	    border: 1px solid #3187e9;
	    border-radius: 30px;
	    background-color: #4195f5;
	    color: #fff;
	    font-size: 18px;
	}
	.info_message {
	    margin-top: 20px;
	    padding-bottom: 50px;
	    font-size: 16px;
	    color: #666666;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</head>
<body>
<main id="content" class="cs inquire">
	<!-- 상단 배너 -->
	<div class="head">
		<h2 class="main_title">문의하기</h2>
		<p class="sub_text">BookMate에 궁금한 점이 있다면 문의해주세요.</p>
	</div>
	<!-- 메인 메뉴바 시작 -->
	<div class="main_area">
	<ul class="menu_bar">
		<li class="menu_home">
			<a class="nav-link active" href="${pageContext.request.contextPath }/suppo/support_main">고객센터</a>
		</li>
		<li class="menu_faq">
			<a class="nav-link" href="${pageContext.request.contextPath }/support/support_faq">자주하는 질문</a>
		</li>
		<li class="menu_notice">
			<a class="nav-link" href="${pageContext.request.contextPath }/support/support_notice">공지사항</a>
		</li>
		<li class="menu_inquire">
			<a class="nav-link" href="${pageContext.request.contextPath }/support/support_inquire">문의하기</a>
		</li>
	</ul>
		<div class="body_area">
			<div class="main_content">
				<ul class="inquire_navi">
					<li>
						<a href="${pageContext.request.contextPath }/support/support_inquire">1:1 문의하기</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath }/support/support_inquire_register">신고접수</a>
					</li>
					<li>
						<a class="my_inquire" href="${pageContext.request.contextPath }/support/support_inquire_MyInquire">나의 문의내역</a>
					</li>
				</ul>
				<h3>나의 문의내역</h3>
				<table class="table">
					<thead class="table-light">
						<tr>
							<th>등록일</th>
							<th>문의 제목</th>
							<th>문의 상태</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>2023.08.03</td>
							<td>집 어케 가여?</td>
							<td>답변대기</td>
						</tr>
						<tr>
							<td>2023.08.03</td>
							<td>집 어케 가여?</td>
							<td>답변대기</td>
						</tr>
						<tr>
							<td>2023.08.03</td>
							<td>집 어케 가여?</td>
							<td>답변대기</td>
						</tr>
						<tr>
							<td>2023.08.03</td>
							<td>집 어케 가여?</td>
							<td>답변대기</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	
</main>
</body>
</html>





