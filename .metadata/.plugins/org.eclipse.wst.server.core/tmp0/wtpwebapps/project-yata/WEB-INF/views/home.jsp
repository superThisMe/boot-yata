<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="ninodezign.com, ninodezign@gmail.com">
	<meta name="copyright" content="ninodezign.com"> 
	<title>상위 0.1%의 당신에게 제공합니다. YaTa</title>
	
	<!-- favicon -->
    <link rel="shortcut icon" href="/project-yata/resources/yata-index/images/ico/favicon.jpg">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/project-yata/resources/yata-index/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/project-yata/resources/yata-index/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/project-yata/resources/yata-index/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/project-yata/resources/yata-index/images/ico/apple-touch-icon-57-precomposed.png">
	
	<!-- css -->
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-index/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-index/css/materialdesignicons.min.css" />
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-index/css/jquery.mCustomScrollbar.min.css" />
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-index/css/prettyPhoto.css" />
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-index/css/unslider.css" />
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-index/css/template.css" />
	<link rel="stylesheet" type="text/css" href="/project-yata/resources/yata-res/css/mobiscroll.jquery.min.css" />
	
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="/project-yata/resources/yata-res/js/mobiscroll.jquery.min.js"></script>
	
	<style>
	    .screen_out {display:block;overflow:hidden;position:absolute;left:-9999px;width:1px;height:1px;font-size:0;line-height:0;text-indent:-9999px}
	    .wrap_content {overflow:hidden;height:300px}
	    .wrap_map {width:50%;height:300px;float:left;position:relative}
	    .wrap_roadview {width:50%;height:300px;float:left;position:relative}
	    .wrap_button {position:absolute;left:15px;top:12px;z-index:2}
	    .btn_comm {float:left;display:block;width:70px;height:27px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/sample_button_control.png) no-repeat}
	    .btn_linkMap {background-position:0 0;}
	    .btn_resetMap {background-position:-69px 0;}
	    .btn_linkRoadview {background-position:0 0;}
	    .btn_resetRoadview {background-position:-69px 0;}
	</style>
	
</head>

<body data-target="#nino-navbar" data-spy="scroll" style="padding-top: 0px;" class="">

	<!-- Header
    ================================================== -->
	<header id="nino-header">
		<div id="nino-headerInner">					
			<nav id="nino-navbar" class="navbar navbar-default" role="navigation">
				<div class="container">

					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nino-navbar-collapse" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="/project-yata/">Ya Ta!</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="nino-menuItem pull-right">
						<div class="navbar-collapse pull-left collapse" id="nino-navbar-collapse" aria-expanded="false" style="height: 1px;">
							<ul class="nav navbar-nav">
								<li class="active"><a href="#nino-header">야타 예약<span class="sr-only">(current)</span></a></li>
								<li class=""><a href="#nino-whatWeDo">야타 소개</a></li>
								<li class=""><a href="#nino-portfolio">차량 갤러리</a></li>
								<li class=""><a href="#nino-latestBlog">차량 게시판</a></li>
								<li class=""><a href="#nino-happyClient">야타 후기</a></li>
								<li class=""><a href="#nino-map">야타 지도</a></li>
							</ul>
							
							<c:choose>
	            				<c:when test="${ empty sessionScope.loginuser }">
									<a style="color: white;" href="/project-yata/account/login">로그인</a>
									&nbsp;&nbsp;
									<a style="color: white;" href="/project-yata/account/regAccpt">회원가입</a>
								</c:when>	
								<c:when test="${ loginuser.user_type eq 'admin' }">
									<a style="color: white;" href="/project-yata/admin/dashboard">관리자페이지</a>
					            	&nbsp;&nbsp;
					            	<a style="color: white;" href="/project-yata/account/logout">로그아웃</a>
								</c:when>							
			            		<c:when test="${ loginuser.user_active eq 'true' and loginuser.user_type eq 'user' }">
					            	<a style="color: white;" href="/project-yata/mypage/mypage-main">${loginuser.user_Name}님</a>
					            	&nbsp;&nbsp;
					            	<a style="color: white;" href="/project-yata/account/logout">로그아웃</a>
					            </c:when>
					            <c:otherwise>
					            	<script type="text/javascript">
										alert('인증을 거쳐주세요');
					            	</script> 
					            	<a style="color: white;" href="/project-yata/account/login">로그인</a>
									&nbsp;&nbsp;
									<a style="color: white;" href="/project-yata/account/regAccpt">회원가입</a>
				            	</c:otherwise>
		           		 	</c:choose>
						</div><!-- /.navbar-collapse -->
						<ul class="nino-iconsGroup nav navbar-nav">
							
							<li><a href="#" class="nino-search"><i class="mdi mdi-magnify nino-icon"></i></a></li>
						</ul>

					</div>
				</div><!-- /.container-fluid -->
			</nav>

			<section id="nino-slider" class="carousel slide container" data-ride="carousel">
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<h2 class="nino-sectionHeading">
							<span class="nino-subHeading">Reservation</span>예약페이지<br></h2>
							<c:choose>
	            				<c:when test="${ empty sessionScope.loginuser }">
	            					<a href="/project-yata/account/login" class="nino-btn">로그인 후 이용하기!</a>
	            				</c:when>
	            				<c:otherwise>
	            					<a id="startRes" data-idx="0" class="nino-btn">서비스 이용하기!</a>		
	            				</c:otherwise>
							</c:choose>
					</div>
					
					
					<div class="item">
						<h2 class="nino-sectionHeading" style="padding-bottom: 5px">
						<span style="font-size: 20px" class="nino-subHeading">YATA! 예약서비스 - 1</span><span style="font-size: 20px">예약 및 반납일 선택</span><br></h2>
						<!-- 예약 및 반납 날짜 Bar -->
					    <div class="mbsc-grid mbsc-form-grid">
					        <div class="mbsc-form-group">
					            <div class="mbsc-row">
					                <div class="mbsc-col-sm-12 mbsc-col-md-6">
					                    <label>
					                        시작일자
					                        <input mbsc-input data-input-style="box" id="demo-app-date" placeholder="Please Select..." />
					                    </label>
					                </div>
					                <div class="mbsc-col-sm-12 mbsc-col-md-6">
					                    <label>
					                        시작시간
					                        <input mbsc-input data-input-style="box" id="demo-app-time" placeholder="Please Select..." />
					                    </label>
					                </div>
					                <div class="mbsc-col-sm-12 mbsc-col-md-6">
					                    <label>
					                        반납일자
					                        <input mbsc-input data-input-style="box" id="demo-app-date2" placeholder="Please Select..." />
					                    </label>
					                </div>
					                <div class="mbsc-col-sm-12 mbsc-col-md-6">
					                    <label>
					                        반납시간
					                        <input mbsc-input data-input-style="box" id="demo-app-time2" placeholder="Please Select..." />
					                    </label>
					                </div>
					                <br>
					            </div>
					            <a id="time" data-idx="1" class="nino-btn" style="margin: 0 auto;"  data-toggle="modal" data-target="#carModal">
					            	예약 가능한 차량 조회
					            </a>
					        </div>
					    </div>
						<!-- 예약 및 반납 날짜 Bar end -->
					</div>

					

					<div class="item">
						<h2 class="nino-sectionHeading" style="padding-bottom: 5px">
							<span style="font-size: 20px" class="nino-subHeading">YATA! 예약서비스 - 2</span><span style="font-size: 20px">차량 선택</span><br>
						</h2>
						<div>
							<h4 style="text-align: center; color: white;">선택한 차량의 정보입니다.</h4>
							<span id = "car_name"></span>
							<br>
							<span id = "car_price"></span>
							<br><br>
							<a data-idx="2" class="nino-btn">예약확인 및 결제</a>
						</div>
					</div>


					<div class="item">
						<h2 class="nino-sectionHeading" style="font-size: 3px">
							<span style="font-size: 20px" class="nino-subHeading">YATA! 예약서비스 - 3</span><span style="font-size: 20px">결제 및 이용내역 확인</span><br>
						</h2>

						<div>
							<table class="table">
								<thead>
									<tr>
										<th scope="col" style="text-align: center;">예약시간</th>
										<th scope="col" style="text-align: center;">반납시간</th>
										<th scope="col" style="text-align: center;">예약차량</th>
										<th scope="col" style="text-align: center;">가격</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td scope="row">
											<p id="td-resDate"></p>
										</td>
										<td>
											<p id="td-resRetDate"></p>
										</td>
										<td>
											<p id="td-carClass"></p>
										</td>
										<td>
											<p id="td-totalPrice"></p>
										</td>
									</tr>
								</tbody>
							</table>
							<hr>
							<table class="table">
								<thead>
									<tr>
										<th scope="col" style="text-align: center;">가용포인트</th>
										<th scope="col" style="text-align: center;">사용포인트</th>
										<th scope="col" style="text-align: center;">잔여포인트</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td scope="row" id="activePoint">${ loginuser.point.active_point }</td>
										<td id="usePoint">#</td>
										<td id="remainPoint">#</td>
									</tr>
								</tbody>
							</table>
						</div>
						<form id="res-form" action="/project-yata/res" method="post">
							<input type="hidden" name="res_date" id="resDate" value="">
							<input type="hidden" name="res_term" id="resTerm" value="">
							<input type="hidden" name="car_num" id="carNum" value="">
							<input type="hidden" name="user_num" id="userNum" value="${ loginuser.user_num }">
							<input type="hidden" name="res_price" id="resPrice" value="">
							<input type="hidden" name="res_point" id="resultPoint" value="">
														
							<button class="nino-btn pay" style="background-color: transparent;">결제</button>
						</form>						
					</div>
				</div>

				<!-- Indicators -->
				<ol id="carousel-indicators" class="carousel-indicators clearfix">
					<li data-target="#nino-slider" data-slide-to="0" class="active">
						<div class="inner">
							<span class="number">01</span>&nbsp;예약</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="1" class="">
						<div class="inner">
							<span class="number">02</span>&nbsp;예약 - 1</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="2" class="">
						<div class="inner">
							<span class="number">03</span>&nbsp;예약 - 2</div>
					</li>
					<li data-target="#nino-slider" data-slide-to="3" class="">
						<div class="inner">
							<span class="number">04</span>&nbsp;예약 - 3</div>
					</li>
				</ol>
			</section>
		</div>
	</header><!--/#header-->

	
	

	<!-- Counting
    ================================================== -->
    <section id="nino-counting">
    	<div class="container">
    		<div layout="row" class="verticalStretch">
    			<div class="item">
    				<div class="number member-cnt">${ user_count }</div>
    				<div class="text">전체회원 수</div>
    			</div>
    			<div class="item">
    				<div class="number car-cnt">${ car_count }</div>
    				<div class="text">보유차량</div>
    			</div>
    			<div class="item">
    				<div class="number review-cnt">${ review_count }</div>
    				<div class="text">총 후기</div>
    			</div>
    			<div class="item">
    				<div class="number res-cnt">${ res_count }</div>
    				<div class="text">누적예약 수</div>
    			</div>
    			<div class="item">
    				<div class="number photo-cnt">${ photo_count }</div>
    				<div class="text">차량사진 수</div>
    			</div>
    		</div>
    	</div>
    </section><!--/#nino-counting-->
	<script type="text/javascript">

	var memberCountConTxt = $('.member-cnt').text();
	  
	  $({ val : 0 }).animate({ val : memberCountConTxt }, {
	   duration: 8000,
	   step: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".member-cnt").text(num);
	  },
	  complete: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".member-cnt").text(num);
	  }
	});

	var memberCountConTxt = $('.car-cnt').text();;
	  
	  $({ val : 0 }).animate({ val : memberCountConTxt }, {
	   duration: 8000,
	   step: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".car-cnt").text(num);
	  },
	  complete: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".car-cnt").text(num);
	  }
	});

	var memberCountConTxt = $('.review-cnt').text();;
	  
	  $({ val : 0 }).animate({ val : memberCountConTxt }, {
	   duration: 8000,
	   step: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".review-cnt").text(num);
	  },
	  complete: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".review-cnt").text(num);
	  }
	});

	var memberCountConTxt = $('.res-cnt').text();
	  
	  $({ val : 0 }).animate({ val : memberCountConTxt }, {
	   duration: 8000,
	   step: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".res-cnt").text(num);
	  },
	  complete: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".res-cnt").text(num);
	  }
	});
		
	var memberCountConTxt = $('.photo-cnt').text();;
	  
	  $({ val : 0 }).animate({ val : memberCountConTxt }, {
	   duration: 8000,
	   step: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".photo-cnt").text(num);
	  },
	  complete: function() {
	    var num = numberWithCommas(Math.floor(this.val));
	    $(".photo-cnt").text(num);
	  }
	});

	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}

	</script>
    
    <!-- What We Do
    ================================================== -->
    <section id="nino-whatWeDo">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">FAQ</span>기업소개 및 FAQ</h2>
			<p class="nino-sectionDesc">스마트한 이동 방법을 제시합니다.
야타는 어느 지점에서 다른 지점으로 이동하려는 모든 사람들을 위해 합리적이고 스마트한 이동 방식을 제시 하고자 합니다.
종합 모빌리티 플랫폼으로서 이동에 대한 선택이 보다 합리적이고, 스마트하고, 자유로운 세상을 꿈 꿉니다.
최신 기술을 기반으로한 모빌리티 혁신을 멈추지 않겠습니다.</p>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div class="text-center">
							<img src="/project-yata/resources/yata-index/images/what-we-do/img-1.jpg" alt="">
						</div>
					</div>
					<div class="col-md-6">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne" class="">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-camera nino-icon"></i>주차반납 장소에 주차할 자리가 없으면 어떻게 하나요 ?</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true" style="">
									<div class="panel-body mCustomScrollbar _mCS_2 mCS_no_scrollbar _mCS_1"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: 87px;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_1" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" style="max-height: 87px;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
예약하신 반납장소 1Km 이내에 주차반납 하시면 추가비용이 발생하지 않으니 반납장소 1Km 이내에 차량을 주차반납 해주세요.
</div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 0px; top: 0px; height: 0px;"><div class="mCSB_dragger_bar" style="line-height: 0px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 0px; height: 0px; top: 0px;"><div class="mCSB_dragger_bar" style="line-height: 0px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-owl nino-icon"></i>대여/반납장소 및 시간 변경 기준이 궁금합니다.</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="height: 0px;">
									<div class="panel-body mCustomScrollbar _mCS_2 mCS_no_scrollbar"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical"><div id="mCSB_2_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_2" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_2_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">예약 후 대여/반납장소 및 대여시간 변경은 불가합니다. 
장소 및 대여시간 변경을 원하실 경우 예약취소 후 재 예약 해 주시기 바랍니다.
반납시간 연장은 가능하며, 연장하는 시간이 다른 예약과 중첩되는 경우 연장이 불가합니다.</div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; top: 0px; height: 0px;"><div class="mCSB_dragger_bar" style="line-height: 30px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_2_scrollbar_vertical" class="mCSB_scrollTools mCSB_2_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_2_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
											<i class="mdi mdi-chevron-up nino-icon arrow"></i>
											<i class="mdi mdi-laptop-mac nino-icon"></i>반납시간을 변경하고 싶습니다.</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false" style="height: 0px;">
									<div class="panel-body mCustomScrollbar _mCS_3 mCS_no_scrollbar"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: none;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 87px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr"><div id="mCSB_3" class="mCustomScrollBox mCS-default mCSB_vertical mCSB_inside" tabindex="0" style="max-height: 154px;"><div id="mCSB_3_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">- 예약하신 차량의 다음 예약이 존재하지 않을 경우 고객님께서 원하는 시간까지 연장 가능합니다.
반납시간연장 시에는 연장대여요금과 연장보험료가 추가로 부과 됩니다.
단, 반납시간 1시간 이내로 임박하여 연장 시에는 반납시간 연장 수수료(10,000원) 가 발생되오니 유의하시기 바랍니다.
									</div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical" style="display: none;"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 0px; top: 0px; height: 0px;"><div class="mCSB_dragger_bar" style="line-height: 0px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div><div id="mCSB_3_scrollbar_vertical" class="mCSB_scrollTools mCSB_3_scrollbar mCS-default mCSB_scrollTools_vertical"><div class="mCSB_draggerContainer"><div id="mCSB_3_dragger_vertical" class="mCSB_dragger" style="position:absolute;"><div class="mCSB_dragger_bar"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section><!--/#nino-whatWeDo-->

	<!-- Portfolio
    ================================================== -->
	<section id="nino-portfolio">
		<div class="container">
			<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">car gallery</span>차 갤러리</h2>
			<p class="nino-sectionDesc"> 야타의 차량 갤러리를 소개합니다. 클릭하시면 슬라이드 쇼로 확인하실 수 있습니다. </p>
		</div>
		
<div class="sectionContent">
			<ul class="nino-portfolioItems" style="position: relative; height: 437.532px;">
				<li class="item" style="position: absolute; left: 0px; top: 0px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-1.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-1.jpg">
						<div class="overlay" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
								<i class="mdi mdi-crown nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">Continental GT</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item" style="position: absolute; left: 269px; top: 0px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-2.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-2.jpg">
						<div class="overlay" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
								<i class="mdi mdi-cube-outline nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">Continental GT</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item" style="position: absolute; left: 538px; top: 0px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-3.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-3.jpg">
						<div class="overlay" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
								<i class="mdi mdi-desktop-mac nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">LAFERARRI</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item" style="position: absolute; left: 807px; top: 0px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-4.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-4.jpg">
						<div class="overlay" style="display: block; left: 0px; top: -100%; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 0px; top: -100%; transition: all 300ms ease 0s;">
								<i class="mdi mdi-flower nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">488 SPIDER</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item" style="position: absolute; left: 0px; top: 218px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-5.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-5.jpg">
						<div class="overlay" style="display: block; left: 100%; top: 0px; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 100%; top: 0px; transition: all 300ms ease 0s;">
								<i class="mdi mdi-gamepad-variant nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">AVENTADOR SVJ</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item" style="position: absolute; left: 269px; top: 218px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-6.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-6.jpg">
						<div class="overlay" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 0px; top: 100%; transition: all 300ms ease 0s;">
								<i class="mdi mdi-gnome nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">AVENTADOR SVJ</span>
							</div>
						</div>
					</a>
				</li>
				<li class="item" style="position: absolute; left: 807px; top: 218px;">
					<a class="nino-prettyPhoto" rel="prettyPhoto[gallery1]" title="Development Mobile" href="/project-yata/resources/yata-index/images/our-work/img-7.jpg">
						<img src="/project-yata/resources/yata-index/images/our-work/img-7.jpg">
						<div class="overlay" style="display: block; left: 0px; top: -100%; transition: all 300ms ease 0s;">
							<div class="content" style="display: block; left: 0px; top: -100%; transition: all 300ms ease 0s;">
								<i class="mdi mdi-guitar-electric nino-icon"></i>
								<h4 class="title">yata.com</h4>
								<span class="desc">CULLINAN</span>
							</div>
						</div>
					</a>
				</li>
			</ul>
		</div>
	</section><!--/#nino-portfolio-->

	<section id="nino-latestBlog">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
				<span class="nino-subHeading">Our stories</span>차량 게시판</h2>
    <div class="sectionContent">
				<div class="row nino-hoverEffect">
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="/project-yata/resources/yata-index/images/our-team/img-1.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Ghost Black Badge</h4>
							<span class="regency">Rolls Royce</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="/project-yata/resources/yata-index/images/our-team/img-2.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Laferrari</h4>
							<span class="regency">Ferrari</span>
						</div>
					</div>
					<div class="col-md-4 col-sm-4">
						<div class="item">
							<div class="overlay" href="#">
								<div class="content">
									<a href="#" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
									<a href="#" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
								</div>
								<img src="/project-yata/resources/yata-index/images/our-team/img-3.jpg" alt="">
							</div>
						</div>
						<div class="info">
							<h4 class="name">Continental GT</h4>
							<span class="regency">Bentley</span>
						</div>
					</div>
				</div>
			</div>
			<div class="sectionContent">
				<br><br>
				
				<!-- Brand
			    ================================================== -->
			    <section id="nino-brand">
			    	<div class="container">
			    		<div class="verticalCenter fw" layout="row">
			    			<div class="col-md-3 col-sm-4 col-xs-6"><a href="#"><img src="/project-yata/resources/yata-index/images/brand/img-1.png" alt=""></a></div>
			    			<div class="col-md-3 col-sm-4 col-xs-6"><a href="#"><img src="/project-yata/resources/yata-index/images/brand/img-2.png" alt=""></a></div>
			    			<div class="col-md-3 col-sm-4 col-xs-6"><a href="#"><img src="/project-yata/resources/yata-index/images/brand/img-3.png" alt=""></a></div>
			    			<div class="col-md-3 col-sm-4 col-xs-6"><a href="#"><img src="/project-yata/resources/yata-index/images/brand/img-4.png" alt=""></a></div>
			    			
			    			
			    		</div>
			    	</div>
		    	</section><!--/#nino-brand-->
				<br>
				<c:forEach items="${ cars }" var="car" varStatus="status">
				<form id="${ car.car_num }form" action="cardetail.action" method="get">
				<input type="hidden" id="${ car.car_num }" name="${ car.car_num }">
				<c:if test="${ status.index eq 0 or status.index % 4 eq 0 }">
					<c:set var="cnt" value="0" />
					<div class="row">
				</c:if>
						<c:set var="cnt" value="${ cnt + 1 }" />
						<div class="col-md-3 col-sm-3">
							<article>
								<div class="articleThumb">
									<a
									href="javascript:window.open('/project-yata/cardetail?car_num=${ car.car_num }','','left=615px,top=25px,width=727px,height=940px')">
									<img style="width: 263px;height: 163px" src="/project-yata/resources/file/carPic/${ car.carPhotos[0].car_picture }">
									</a>
								</div>
								<h3 class="articleTitle"><a href="javascript:window.open('/project-yata/cardetail?car_num=${ car.car_num }','','left=675px,top=100px,width=580px,height=800px')">[${ car.carType.car_maker }]&nbsp;${ car.carType.car_class }</a></h3>
									<!-- <p class="articleDesc"></p> -->
									연비 : ${ car.car_fuel } L / KM<br>
									가격 : 시간당 ${ car.car_price } POINT<br>	
									등록일 : ${ car.car_date }
								<div class="articleMeta">
									<a href="#"><i class="mdi mdi-eye nino-icon"></i> 543</a>
									<a href="#"><i class="mdi mdi-comment-multiple-outline nino-icon"></i> 15</a>
								</div>
							</article>
						</div>
					<c:if test="${ cnt == 4 }">
					</div>
					<br>
					</c:if>
					</form>
				</c:forEach>
				<!-- <br> -->
				
		</div>
    </div>
    </section>
<!-- Testimonial
    ================================================== -->
    <!--/#nino-testimonial-->

    <!-- Happy Client
    ================================================== -->
    <section id="nino-happyClient">
    	<div class="container">
    		<h2 class="nino-sectionHeading"><a href="/project-yata/board/review-list"/>
				<span class="nino-subHeading">Happy Clients</span>이용자 후기</h2>
			<div class="sectionContent">
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="/project-yata/resources/yata-index/images/happy-client/img-1.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">병준</h4>
								<span class="regency">사용자아이디</span>
								<p class="desc">좋구 가격도 좋아서 과감하게 선택했어요 엄마랑 가는 여행이라 신경써서 선택했답니다 저희 비행기는 연착없이 제시간에 도착했구 저희는 기내수화물</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="/project-yata/resources/yata-index/images/happy-client/img-2.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">영환</h4>
								<span class="regency">사용자아이디</span>
								<p class="desc">없는 차량 부탁 했는데 전혀 전달 안되고 콜센타 안내받은 전화 번호는 연결안되요 혹시 렌트 하실분들은 한인 렌트카 아님 후기 좋은 렌트카 하시는거 추천드립니다 버* 시스템도 차량도 정말 별로입니다</p>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="/project-yata/resources/yata-index/images/happy-client/img-3.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">재웅</h4>
								<span class="regency">사용자아이디</span>
								<p class="desc">괌자길 10주년 이벤트에 드림렌트카를 받게 되어서 잘 이용하고 후기를 써 볼려구요 ^^ 저는 괌이... 타다 렌터카 타니 확실히 차이가 나더라구요 </p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div layout="row" class="item">
							<div class="nino-avatar fsr">
								<img class="img-circle" src="/project-yata/resources/yata-index/images/happy-client/img-4.jpg" alt="">
							</div>
							<div class="info">
								<h4 class="name">석창</h4>
								<span class="regency">사용자아이디</span>
								<p class="desc">보험도 대박이었어요, 솔직히 드림렌트카 보다 저렴한곳도 있었지만, 문의해보면 같은 zdc보험도 안되는것 은근히 많았는데요.드림렌트카는 안되는것 거의 없었어요. 반납할때 보니까 저희도 모르는</p>
							</div>
						</div>
					</div>
				</div>
			</div>
    	</div>
    </section>
<section class="nino-testimonial bg-white">
    	<div class="container">
    		<div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="unslider"><div class="nino-testimonialSlider unslider-horizontal" style="position: relative; overflow: hidden;">
				<ul class="unslider-wrap unslider-carousel" style="width: 300%; left: 0%;">
					<li class="unslider-active" style="width: 33.3333%;">
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="/project-yata/resources/yata-index/images/testimonial/img-1.jpg" alt="">
							</div>
							<div>
								<p class="quote">전 여름휴가 때 괌으로 여행 다녀 왔는데요

처음으로 혼자 가본 해외여행이였어요

그래서 잘 모르는 것도 많고 걱정됐었는데

좋은 렌트카 업체 만나서 잘 즐기다 왔어요ㅎㅎ

전 린든렌트카 업체 이용했는데

여기가 찾으시는 괌한인렌트카 거든요 한국인이 운영하는 곳이에요

한국인 스탭이 몇 명 있는데 편하게 한국말로 상담 받을 수 있어서 좋았어요

제가 잘 몰라서 괌에 대해서도 이런저런 질문 많이 했었거든요

차에 관련된게 아니라 귀찮을법도 했었을텐데

친절하게 잘 알려주시더라구요~~~!!

어디로 가면 좋고 어디에 뭐가 맛있고ㅋㅋ

덕분에 혼자하는 여행이였지만 외롭지 않았습니다^^

관리를 꼼꼼하게 하는지 차 상태도 좋았거든요~~

전체적으로 만족스러운 여행이였어요!!</p>
								<span class="name">성이름</span>
							</div>
						</div>
					</li>
					<li style="width: 33.3333%;" class="">
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="/project-yata/resources/yata-index/images/testimonial/img-2.jpg" alt="">
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
					<li style="width: 33.3333%;" class="">
						<div layout="row" class="verticalCenter">
							<div class="nino-avatar fsr">
								<img class="img-circle img-thumbnail" src="/project-yata/resources/yata-index/images/testimonial/img-3.jpg" alt="">
							</div>
							<div>
								<p class="quote">"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation."</p>
								<span class="name">Jon Doe</span>
							</div>
						</div>
					</li>
				</ul>
			</div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div><a class="unslider-arrow next"><i class="mdi mdi-chevron-right"></i></a><a class="unslider-arrow prev"><i class="mdi mdi-chevron-left"></i></a></div>
    	</div>
    </section><!--/#nino-happyClient-->

    <!-- Latest Blog
    ================================================== -->
    <!--/#nino-latestBlog-->

    <!-- Map
    ================================================== -->
    <section id="nino-map">
    	<div class="container">
    		<h2 class="nino-sectionHeading">
    			<i class="mdi mdi-map-marker nino-icon"></i>
    			<span class="text">야타 오시는길</span>
    			<span class="text" style="display: none;">Close map</span>
    		</h2>
    		<div class="mapWrap">
	    		<div class="wrap_content">
    				<div class="wrap_map">
        				<div id="map" style="width:100%;height:100%"></div> <!-- 지도를 표시할 div 입니다 -->
        			<div class="wrap_button">
            			<a href="javascript:;" class="btn_comm btn_linkMap" target="_blank" onclick="moveKakaoMap(this)"><span class="screen_out">지도 크게보기</span></a> <!-- 지도 크게보기 버튼입니다 -->
            			<a href="javascript:;" class="btn_comm btn_resetMap" onclick="resetKakaoMap()"><span class="screen_out">지도 초기화</span></a> <!-- 지도 크게보기 버튼입니다 -->
        			</div>
    			</div>
    			<div class="wrap_roadview">
        			<div id="roadview" style="width:100%;height:100%"></div> <!-- 로드뷰를 표시할 div 입니다 -->
        				<div class="wrap_button">
            				<a href="javascript:;" class="btn_comm btn_linkRoadview" target="_blank" onclick="moveKakaoRoadview(this)"><span class="screen_out">로드뷰 크게보기</span></a> <!-- 로드뷰 크게보기 버튼입니다 -->
            				<a href="javascript:;" class="btn_comm btn_resetRoadview" onclick="resetRoadview()"><span class="screen_out">로드뷰 크게보기</span></a> <!-- 로드뷰 리셋 버튼입니다 -->
        				</div>
    				</div>
				</div>
	    	</div>
    	</div>
    </section><!--/#nino-map-->
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c08b927e742e2037a1df667cf78a3cf8"></script>
	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapCenter = new kakao.maps.LatLng(37.481960, 126.898328), // 지도의 중심 좌표
		    mapOption = {
		        center: mapCenter, // 지도의 중심 좌표
		        level: 4 // 지도의 확대 레벨
		    };
		
		// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
		var map = new kakao.maps.Map(mapContainer, mapOption);
		
		// 지도에 올릴 마커를 생성합니다.
		var mMarker = new kakao.maps.Marker({
		    position: mapCenter, // 지도의 중심좌표에 올립니다.
		    map: map // 생성하면서 지도에 올립니다.
		});

		var iwContent = '<div style="padding:5px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;YA TA!<br><a href="https://map.kakao.com/link/map/YA TA!,37.481960,126.898328" style="color:blue" target="_blank">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;큰지도보기</a> <a href="https://map.kakao.com/link/to/YA TA!,37.481960,126.898328" style="color:red" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(37.481960, 126.898328); //인포윈도우 표시 위치입니다
		
		// 지도에 올릴 장소명 인포윈도우 입니다.
		var mLabel = new kakao.maps.InfoWindow({
		    position: mapCenter, // 지도의 중심좌표에 올립니다.
		    content: iwContent // 인포윈도우 내부에 들어갈 컨텐츠 입니다.
		});
		mLabel.open(map, mMarker); // 지도에 올리면서, 두번째 인자로 들어간 마커 위에 올라가도록 설정합니다.
		
		
		var rvContainer = document.getElementById('roadview'); // 로드뷰를 표시할 div
		var rv = new kakao.maps.Roadview(rvContainer); // 로드뷰 객체 생성
		var rc = new kakao.maps.RoadviewClient(); // 좌표를 통한 로드뷰의 panoid를 추출하기 위한 로드뷰 help객체 생성
		var rvResetValue = {} //로드뷰의 초기화 값을 저장할 변수
		rc.getNearestPanoId(mapCenter, 50, function(panoId) {
		    rv.setPanoId(panoId, mapCenter);//좌표에 근접한 panoId를 통해 로드뷰를 실행합니다.
		    rvResetValue.panoId = panoId;
		});
		
		// 로드뷰 초기화 이벤트
		kakao.maps.event.addListener(rv, 'init', function() {
		
		    // 로드뷰에 올릴 마커를 생성합니다.
		    var rMarker = new kakao.maps.Marker({
		        position: mapCenter,
		        map: rv //map 대신 rv(로드뷰 객체)로 설정하면 로드뷰에 올라갑니다.
		    });
		
		    // 로드뷰에 올릴 장소명 인포윈도우를 생성합니다.
		    var rLabel = new kakao.maps.InfoWindow({
		        position: mapCenter,
		        content: 'YA TA!'
		    });
		    rLabel.open(rv, rMarker);
		
		    // 로드뷰 마커가 중앙에 오도록 로드뷰의 viewpoint 조정 합니다.
		    var projection = rv.getProjection(); // viewpoint(화면좌표)값을 추출할 수 있는 projection 객체를 가져옵니다.
		    
		    // 마커의 position과 altitude값을 통해 viewpoint값(화면좌표)를 추출합니다.
		    var viewpoint = projection.viewpointFromCoords(rMarker.getPosition(), rMarker.getAltitude());
		    rv.setViewpoint(viewpoint); //로드뷰에 뷰포인트를 설정합니다.
		
		    //각 뷰포인트 값을 초기화를 위해 저장해 놓습니다.
		    rvResetValue.pan = viewpoint.pan;
		    rvResetValue.tilt = viewpoint.tilt;
		    rvResetValue.zoom = viewpoint.zoom;
		});
		
		//지도 이동 이벤트 핸들러
		function moveKakaoMap(self){
		    
		    var center = map.getCenter(), 
		        lat = center.getLat(),
		        lng = center.getLng();
		
		    self.href = 'https://map.kakao.com/link/map/' + encodeURIComponent('YA TA!') + ',' + lat + ',' + lng; //Kakao 지도로 보내는 링크
		}
		
		//지도 초기화 이벤트 핸들러
		function resetKakaoMap(){
		    map.setCenter(mapCenter); //지도를 초기화 했던 값으로 다시 셋팅합니다.
		    map.setLevel(mapOption.level);
		}
		
		//로드뷰 이동 이벤트 핸들러
		function moveKakaoRoadview(self){
		    var panoId = rv.getPanoId(); //현 로드뷰의 panoId값을 가져옵니다.
		    var viewpoint = rv.getViewpoint(); //현 로드뷰의 viewpoint(pan,tilt,zoom)값을 가져옵니다.
		    self.href = 'https://map.kakao.com/?panoid='+panoId+'&pan='+viewpoint.pan+'&tilt='+viewpoint.tilt+'&zoom='+viewpoint.zoom; //Kakao 지도 로드뷰로 보내는 링크
		}
		
		//로드뷰 초기화 이벤트 핸들러
		function resetRoadview(){
		    //초기화를 위해 저장해둔 변수를 통해 로드뷰를 초기상태로 돌립니다.
		    rv.setViewpoint({
		        pan: rvResetValue.pan, tilt: rvResetValue.tilt, zoom: rvResetValue.zoom
		    });
		    rv.setPanoId(rvResetValue.panoId);
		}
	</script>
	
    <!-- Footer
    ================================================== -->
    <footer id="footer">
        <div class="container">
        	<div class="row">
        		<div class="col-md-4">
        			<div class="colInfo">
	        			<div class="footerLogo">
	        				<a href="#">야타</a>	
	        			</div>
	        			<p>모빌리티 혁신으로 사회 • 경제 • 환경 문제를 개선하고 사회적 가치를 실현하고자 합니다.
생산을 넘어 공유로 나아갔듯이, 우리가 사는 커뮤니티가 함께 살아가는 방식을 고민합니다.
지속가능한 세상을 위한 모빌리티 혁신을 이루겠습니다.</p>
	        			<div class="nino-followUs">
	        				<div class="totalFollow"><span>15k</span>팔로워</div>
	        				<div class="socialNetwork">
	        					<span class="text">팔로우하기</span>
	        					<a href="" class="nino-icon"><i class="mdi mdi-facebook"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-twitter"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-instagram"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-pinterest"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-google-plus"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-youtube-play"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-dribbble"></i></a>
	        					<a href="" class="nino-icon"><i class="mdi mdi-tumblr"></i></a>
	        				</div>
	        			</div>
	        			<form action="" class="nino-subscribeForm">
	        				<div class="input-group input-group-lg">
								<input type="email" class="form-control" placeholder="이메일을 입력하세요" required="">
								<span class="input-group-btn">
									<button class="btn btn-success" type="submit">전송</button>
								</span>
							</div>
	        			</form>
        			</div>
        		</div>
        		<div class="col-md-4 col-sm-6">
        			<div class="colInfo">
	        			<h3 class="nino-colHeading">블로그</h3>
	        			<ul class="listArticles">
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="/project-yata/resources/yata-index/images/our-blog/img-4.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">블로그 내용들A</a></h3>
	        						<div class="date">2020년 1월 11일</div>
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="/project-yata/resources/yata-index/images/our-blog/img-5.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">블로그 내용들B</a></h3>
	        						<div class="date">2020년 1월 11일</div>
	        					</div>
	        				</li>
	        				<li layout="row" class="verticalCenter">
	        					<a class="articleThumb fsr" href="#"><img src="/project-yata/resources/yata-index/images/our-blog/img-6.jpg" alt=""></a>
	        					<div class="info">
	        						<h3 class="articleTitle"><a href="#">블로그 내용들C</a></h3>
	        						<div class="date">2020년 1월 11일</div>
	        					</div>
	        				</li>
	        			</ul>
        			</div>
        		</div>
        		<div class="col-md-4 col-sm-6">
        			<div class="colInfo">
	        			<h3 class="nino-colHeading">인스타그램</h3>
	        			<div class="instagramImages clearfix">
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-1.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-2.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-3.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-4.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-5.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-6.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-7.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-8.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-9.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-3.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-4.jpg" alt=""></a>
	        				<a href="#"><img src="/project-yata/resources/yata-index/images/instagram/img-5.jpg" alt=""></a>
	        			</div>
	        			<a href="#" class="morePhoto">사진 더보러가기</a>
        			</div>
        		</div>
        	</div>
			<div class="nino-copyright">Copyright © 2020 <a target="_blank" href="http://www.ninodezign.com/" title="yata.com - Top quality open source resources for web developer and web designer">yata.com</a>. All Rights Reserved. <br> MoGo free PSD template by <a href="https://www.behance.net/laaqiq">Laaqiq</a></div>
        </div>
    </footer><!--/#footer-->

    <!-- Search Form - Display when click magnify icon in menu
    ================================================== -->
    <form action="" id="nino-searchForm">
    	<input type="text" placeholder="Search..." class="form-control nino-searchInput">
    	<i class="mdi mdi-close nino-close"></i>
    </form><!--/#nino-searchForm-->
	
    <!-- Scroll to top
    ================================================== -->
	<a href="#" id="nino-scrollToTop" style="display: none;">Go to Top</a>
	
	
	
	<!-- 차량 선택 Modal -->

					<div class="modal fade" id="carModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h2 style="text-align: center;" class="modal-title" id="exampleModalLabel">차량 선택</h2>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
								
								<table id="dataTable" width="100%">
				                  <thead>
				                    <tr>
				                      <th style = "text-align: center;">제조사</th>
				                      <th style = "text-align: center;">이&nbsp;&nbsp;름</th>
				                      <th style = "text-align: center;">시간당 가격</th>
				                    </tr>
				                  </thead>                  
				                  <tbody>
				                  	<c:forEach items="${ cars }" var="car">
				                  	<tr>
				                  	  <td style = "text-align: center;">${ car.carType.car_maker }
				                  	  <input class="car-num" type="hidden" value="${ car.car_num }">
				                  	  </td>
				                      <td style = "text-align: center;"><a style="cursor: pointer;" class="res-car">${ car.carType.car_class }</a></td>
				                      <td class="price" style = "text-align: center;">${ car.car_price }</td>
				                    </tr>
				                    </c:forEach>  
				                  </tbody>
				                  
				                 </table>
								</div>
								<div class="modal-footer">
									<!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">완료</button> -->
								</div>
							</div>
						</div>
					</div>
	<!-- Modal End -->
	<!-- javascript -->
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/jquery.min.js"></script>	
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/jquery.hoverdir.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/modernizr.custom.97074.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/unslider-min.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-index/js/template.js"></script>
	<script type="text/javascript" src="/project-yata/resources/yata-res/js/mobiscroll.jquery.min.js"></script>
	
	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<!-- css3-mediaqueries.js for IE less than 9 -->
	<!--[if lt IE 9]>
	    <script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->
	
	<script src="/project-yata/resources/yata-res/js/mobiscroll.jquery.min.js"></script>
	<script type="text/javascript">
	$(function() {
    	$('.carousel').carousel({
        	interval: false
       	});


		var current_position = 0;
		var startdate = null;
		var total = null; 

		mobiscroll.settings = {
       		lang: 'en',                           // Specify language like: lang: 'pl' or omit setting to use default
       		theme: 'ios',                         // Specify theme like: theme: 'ios' or omit setting to use default
           	themeVariant: 'light',            // More info about themeVariant: https://docs.mobiscroll.com/4-10-1/datetime#opt-themeVariant
       		display: 'bubble'                     // Specify display mode like: display: 'bottom' or omit setting to use default
   		};
   
      	// Mobiscroll Date & Time initialization
      	$('#demo-app-date').mobiscroll().date();
      
      	// Mobiscroll Date & Time initialization
      	$('#demo-app-time').mobiscroll().time();
      
   		// Mobiscroll Date & Time initialization
      	$('#demo-app-date2').mobiscroll().date();
      
      	// Mobiscroll Date & Time initialization
      	$('#demo-app-time2').mobiscroll().time();
      						        
		$('#time').on('click', function(event) {

			/* var start = new Date($('#demo-app-date').val() + " " + $('#demo-app-time').val())
			var diff = (( new Date($('#demo-app-date2').val() + " " + $('#demo-app-time2').val()) - start )) / 1000 / 60 / 60;
				
			var result = confirm("고객님의 총 대여시간은 " + diff + "시간입니다.\n다음단계로 이동합니다.");
	
			if(!result) { 
				return;
			}
		
			startdate = start;
			total = diff; */
	
			/* $.ajax({
				"url": "url",
				"data": { "start": , "diff": diff },
				"success": function(d, status, xhr) {
				//표시
				}
			});  */
		
		});

		function getFormatDate(date) {
		    var year = date.getFullYear();              //yyyy
		    var month = (1 + date.getMonth());          //M
		    month = month >= 10 ? month : '0' + month;  //month 두자리로 저장
		    var day = date.getDate();                   //d
		    day = day >= 10 ? day : '0' + day;          //day 두자리로 저장
		    return  year + "년 " + month + "월 " + day + "일";
		}
		

		// ol li 클릭 통제 및 다음단계 버튼 클릭시 화면 전환
		var firedFromBtn = false;
		$('#nino-slider .item a').on('click', function(event) {
			var idx = parseInt($(this).attr("data-idx"));

			if(idx == 0 && ${ count > 0}) {
				var result = confirm('아직 반납되지 않은 차량이 있습니다.\n야타 서비스 예약은 하루에 한 건만 가능합니다.\n예약 리스트로 이동하시겠습니까?');
				if(result){ 
					location.href="/project-yata/mypage/reservationlist?user_num=${loginuser.user_num}";
				} else {
					return;
				}		
			}
		
			if(idx == 1) {

				var start = new Date($('#demo-app-date').val() + " " + $('#demo-app-time').val());
				var end = new Date($('#demo-app-date2').val() + " " + $('#demo-app-time2').val());
				var diff = (( end - start )) / 1000 / 60 / 60;
		
				var start = new Date($('#demo-app-date').val() + " " + $('#demo-app-time').val())
				var diff = (( new Date($('#demo-app-date2').val() + " " + $('#demo-app-time2').val()) - start )) / 1000 / 60 / 60;
						
				var result = confirm("고객님의 총 대여시간은 " + diff + "시간입니다.\n다음단계로 이동할까요?");
		
				if(!result) { 
					return;
				}
				
				var start2 = getFormatDate(start);
				var end2 = getFormatDate(end);

				var start3 = $('#demo-app-time').val();
				var end3 = $('#demo-app-time2').val();

				var start4 = start2 + " " + start3;
				var end4 = end2 + " " + end3;

				$('#td-resDate').text(start4);
				$('#td-resRetDate').text(end4);

				$('#resDate').val(start);
				$('#resTerm').val(diff);
				
			
			}
						
			if (idx < $("ol#carousel-indicators li").length - 1) {
				firedFromBtn = true;	
				$('ol#carousel-indicators li[data-slide-to=' + (idx+1) + '] .inner').trigger('click');
			}
			
		});
		
		$('#carousel-indicators li').on('click', function(event) {
			if (!firedFromBtn) {
				event.preventDefault();
				event.stopPropagation();
			}
			firedFromBtn = false;
		});
		// ol li 클릭 통제 및 다음단계 버튼 클릭시 화면 전환 끝

		// 차량 선택 Modal에서 차량 값 가져오기
		$('.res-car').on('click', function(event) {

			var car_num = $(this).parent().parent().find('.car-num').val();
			var car_maker = $(this).parent().parent().find('.res-car').text();
			var car_price = $(this).parent().parent().find('.price').text();
			var real_price = parseInt(car_price); // int된 차량가

			var car_name = "차량 이름 : " + car_maker;
			var car_pri = "차량 가격 : " + real_price;

			//console.log(car_name,car_pri);
			
			$('#car_name').text("차량 이름 : " + car_maker);
			$('#car_price').text("차량 가격(1시간당) : " + real_price);

			$('#carModal').modal('hide');

			$('#td-carClass').text(car_maker);
			var totalPrice = (real_price * $('#resTerm').val());
			console.log(totalPrice);
			$('#td-totalPrice').text(totalPrice);
			$('#usePoint').text(totalPrice);
			var remainPrice = parseInt($('#activePoint').text() - totalPrice);
			$('#remainPoint').text(remainPrice);
			$('#resultPoint').val(remainPrice);
			console.log($('#resultPoint').val());
			
			$('#resPrice').val(totalPrice);
			$('#carNum').val(car_num);

			var active_point = parseInt($('#activePoint').text()); // 보유포인트
			var result_price = parseInt($('#resPrice').val()); // 렌트필요비용

			if (active_point < result_price) {
				alert('현재 보유하신 포인트가 부족합니다.\n포인트 내역으로 이동합니다.');
				location.href="/project-yata/mypage/point";
			}

			$('.pay').on('click', function(event) {
						
				var result = confirm('고객님의 보유포인트에서 '+ result_price + '포인트가 차감됩니다. 결제를 진행할까요?');
				if(result) {
					alert('결제가 완료되었습니다. 예약페이지로 이동합니다.');
					$('.pay').submit();
				} else { 
					event.preventDefault();
					alert('취소되었습니다.');
				}
								
			});
				
		});
				  
   });
   </script>

</body>
</html>