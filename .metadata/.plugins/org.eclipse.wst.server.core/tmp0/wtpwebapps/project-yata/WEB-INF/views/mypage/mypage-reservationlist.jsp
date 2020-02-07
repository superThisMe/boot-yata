<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>마이 페이지</title>

<link href="/project-yata/resources/yata-member-admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<script src="/project-yata/resources/yata-member-admin/vendor/fontawesome-free/js/all.min.js"></script>

<link href="/project-yata/resources/yata-member-admin/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">


</head>
<body id="page-top" cz-shortcut-listen="true">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<jsp:include page="sidebar.jsp" />
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<jsp:include page="/WEB-INF/views/admin/modules/topbar.jsp" />
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">내 예약 리스트</h1>
					<p class="mb-4">■ 현재 진행중인 예약 상황을 조회 할 수있다. ■ 예약을 취소가능하다.(판매자의
						규정내에 취소시) ■ 예약 변경시에는 취소후 재 예약을 해야한다. ■ 이전에 예약한 리스트를 볼 수 있다. ■ 예약
						취소 리스트를 볼 수 있다. ■ 예약리스트를 날짜별로 조회할 수 있다. ■ 예약한 차량의 반납을 할 수 있다.</p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h6 class="m-0 font-weight-bold text-primary">현재 진행중인 예약 상황</h6>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12">
											<table class="table table-bordered dataTable" id="dataTable"
												width="100%" cellspacing="0" role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead>
													<tr>
														<th>예약번호</th>
														<th>회원번호</th>
														<th>차량고유번호</th>
														<th>예약일자</th>
														<th>예약기간</th>
														<th>예약금액</th>
														<th>반납여부</th>
													</tr>
												</thead>
												<tbody>	
														
														<c:forEach items="${ reserves }" var="reserve">
														<tr>
															<td>${ reserve.res_num }</td>
															<td>${ reserve.member.user_num }</td>
															<td>${ reserve.car.car_num }</td>
															<td>${ reserve.res_date }</td>
															<td>${ reserve.res_term }</td>
															<td>${ reserve.res_price }</td>
															<td>
															
															<c:choose>
																<c:when test="${not reserve.res_cancel}">
																	<a data-res-num="${ reserve.res_num }" data-user-num="${ reserve.member.user_num }" data-car-num="${ reserve.car.car_num }" class="dropdown-item show-ask-review-modal" href="javascript:" >
													               		<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>반납
													               	</a>
																</c:when>
																
																<c:otherwise>
																	[반납완료]
																</c:otherwise>
															</c:choose>
															
															</td>
														</tr>
														</c:forEach>
														
															
														<!-- first modal -->
														<div class="modal fade" id="returnCar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
															<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="exampleModalLabel">반납 하시겠습니까?</h5>
																		<button class="close" type="button" data-dismiss="modal"
																			aria-label="Close">
																			
																		</button>
																	</div>
																	
																	<div class="modal-footer">
																		<button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
																		<a  class="btn btn-primary" href="#" data-toggle="modal" data-target="#askReview">반납</a>
																	</div>
																</div>
															</div>
														</div>
														
														<!-- second modal -->
														<div class="modal fade" id="askReview" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
															<div class="modal-dialog" role="document">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="exampleModalLabel">후기를 작성하시겠습니까?</h5>
																		<button class="close" type="button" data-dismiss="modal"
																			aria-label="Close">
																			
																		</button>
																	</div>
																		
																	<div class="modal-footer">
																		<a class="btn btn-primary next" href="javascript:">다음에</a>
																		<a class="btn btn-primary write" href="javascript:">작성</a>
																	</div>
																</div>
															</div>
														</div>
														
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- /.container-fluid --> 

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright © Your Website 2019</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Bootstrap core JavaScript-->
	<script
		src="/project-yata/resources/yata-member-admin/vendor/jquery/jquery.min.js"></script>
	<script
		src="/project-yata/resources/yata-member-admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="/project-yata/resources/yata-member-admin/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script
		src="/project-yata/resources/yata-member-admin/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="/project-yata/resources/yata-member-admin/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/project-yata/resources/yata-member-admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="/project-yata/resources/yata-member-admin/js/demo/datatables-demo.js"></script>
		
	<script type="text/javascript">
	$(function() {
		$('.show-ask-review-modal').on('click', function(event) {
			var user_num = $(this).attr("data-user-num");
			var res_num = $(this).attr("data-res-num");
			var car_num = $(this).attr("data-car-num");
			
			$('#askReview a.next').attr('href', "/project-yata/mypage/return_car?resNum=" + res_num + "&userNum=" + user_num);
			$('#askReview a.write').attr('href', "/project-yata/mypage/review-write?resNum=" + res_num + "&userNum=" + user_num + "&carNum=" + car_num);
			$('#returnCar').modal("show");
		});
	});
	</script>

</body>

</html>