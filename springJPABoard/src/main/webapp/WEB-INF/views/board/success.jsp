<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>등록 완료 | Simple Board</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
/* 입력 화면과 동일한 배경색 */
body {
	background-color: #f8f9fa;
	font-family: 'Pretendard', -apple-system, sans-serif;
}

.success-container {
	max-width: 550px;
	margin: 100px auto;
}

/* 공통 카드 스타일 적용 */
.card {
	border: none;
	border-radius: 15px;
	box-shadow: 0 0 25px rgba(0, 0, 0, 0.08);
	overflow: hidden;
}

/* 입력폼 헤더와 동일한 포인트 컬러 적용 */
.card-top-border {
	height: 8px;
	background-color: #4e73df;
}

.icon-circle {
	width: 80px;
	height: 80px;
	background-color: #e8f5e9;
	color: #2e7d32;
	border-radius: 50%;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 2.5rem;
	margin: 0 auto 25px;
}

.msg-title {
	color: #333;
	font-weight: 700;
}

.msg-desc {
	color: #777;
	font-size: 1.1rem;
}

/* 버튼 커스텀 */
.btn-custom-main {
	background-color: #4e73df;
	border: none;
	padding: 12px 25px;
	font-weight: 600;
	transition: all 0.3s;
}

.btn-custom-main:hover {
	background-color: #2e59d9;
	transform: translateY(-2px);
}

.btn-custom-sub {
	padding: 12px 25px;
	font-weight: 600;
}
</style>
</head>
<body>

	<div class="container success-container">
		<div class="card p-0">
			<div class="card-top-border"></div>

			<div class="card-body p-5 text-center">
				<div class="icon-circle">
					<i class="bi bi-check-lg"></i>
				</div>

				<h2 class="msg-title mb-3">게시글 등록 성공</h2>
				<p class="msg-desc mb-4">
				<h1>"${message}"</h1>
				</p>

				<hr class="my-4" style="opacity: 0.1;">

				<div class="d-grid d-md-flex justify-content-center gap-3">
					<a href="/board/insertForm"
						class="btn btn-outline-primary btn-custom-sub"> <i
						class="bi bi-pencil-plus me-1"></i> 추가 작성하기
					</a> <a href="/board/boardList"
						class="btn btn-primary btn-custom-main text-white"> <i
						class="bi bi-list-task me-1"></i> 게시판 리스트
					</a>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>