<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상위 0.1%의 당신에게 제공합니다.</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- <link rel="stylesheet" type="text/css"
	href="/project-yata/resources/yata-cardetail/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/project-yata/resources/yata-cardetail/css/materialdesignicons.min.css" />
<link rel="stylesheet" type="text/css"
	href="/project-yata/resources/yata-cardetail/css/jquery.mCustomScrollbar.min.css" />
<link rel="stylesheet" type="text/css"
	href="/project-yata/resources/yata-cardetail/css/prettyPhoto.css" />
<link rel="stylesheet" type="text/css"
	href="/project-yata/resources/yata-cardetail/css/unslider.css" />
<link rel="stylesheet" type="text/css"
	href="/project-yata/resources/yata-cardetail/css/template.css" /> -->

<style>
.carousel-inner>.carousel-item>img {
	height: 360px;
}
.car-content {height:200px;}
.car-content h2, h2>span, h3 ,p  {text-align:center;}
.car-content p {height: 345px; line-height: 11px;}


</style>

<script language="JavaScript" type="text/JavaScript">
	function linkToOpener(URL) {
		if (window.opener && !window.opener.closed)
			window.opener.location = URL;
		window.close();
	}
</script>
</head>
<body>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>



	<div class="container"></div>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img class="d-block w-100"
					src="/project-yata/resources/file/carPic/${ car.carPhotos[0].car_picture }"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="/project-yata/resources/file/carPic/${ car.carPhotos[1].car_picture }"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="/project-yata/resources/file/carPic/${ car.carPhotos[2].car_picture }"
					alt="Third slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="/project-yata/resources/file/carPic/${ car.carPhotos[3].car_picture }"
					alt="Fourth slide">
			</div>
			<br>
			<!-- / 슬라이드 쇼 끝 -->
			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<!-- <span>Previous</span> -->
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<!-- <span>Next</span> -->
			</a>
			<!-- / 화살표 버튼 끝 -->
			<!-- 인디케이터 -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>&nbsp;
				<!--0번부터시작-->
				<li data-target="#demo" data-slide-to="1"></li>&nbsp;
				<li data-target="#demo" data-slide-to="2"></li>&nbsp;
				<li data-target="#demo" data-slide-to="3"></li>
			</ul>
			<!-- 인디케이터 끝 -->
		</div>
	</div>
<c:set var='lb' value="
" /> 
	<div class="car-content">
		<h2 class="nino-sectionHeading">
		</h2>
		<h3 class="articleTitle">*&nbsp;${ car.carType.car_maker }&nbsp;${ car.carType.car_class }&nbsp;*
		</h3>
		<p>
		연비 : ${ car.car_fuel } L / KM<br> <br>
		가격 : 시간당 ${ car.car_price }POINT<br> <br>
		등록일 : ${ car.car_date }<br><br>
내용 : 
${ fn:replace( car.car_content, lb, "<br>") }
	</p>
	</div>

	<jsp:include page="/WEB-INF/views/cardetail/calculator.jsp" />

	<div class="reserve-button">
		<a href="javascript:linkToOpener('/project-yata/');"
		   class="btn btn-primary btn-lg active" role="button"
			aria-pressed="true">예약하러 가기</a> 
		<a href="javascript:linkToOpener('/project-yata/board/review-list');"
		   class="btn btn-primary btn-lg active" role="button"
		   aria-pressed="true">후기보기</a> 
		<a href="javascript:void(window.close())"
		   class="btn btn-secondary btn-sm" role="button" aria-pressed="true" style="height: 48px; text-align: center;">닫기</a>
	</div>

</body>
</html>
