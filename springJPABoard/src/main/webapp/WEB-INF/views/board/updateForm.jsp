<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 작성 | Simple Board</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
body {
	background-color: #f8f9fa;
}

.write-container {
	max-width: 800px;
	margin: 50px auto;
}

.card {
	border: none;
	border-radius: 15px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #4e73df;
	color: white;
	border-radius: 15px 15px 0 0 !important;
	padding: 20px;
}

.form-label {
	font-weight: 600;
	color: #444;
}

.btn-submit {
	background-color: #4e73df;
	border: none;
	padding: 10px 25px;
}

.btn-submit:hover {
	background-color: #2e59d9;
}
</style>
</head>
<body>

	<div class="container write-container">
		<div class="card">
			<div class="card-header">
				<h4 class="mb-0">
					<i class="bi bi-pencil-square me-2"></i>${board.writer}님의 게시판수정
				</h4>
			</div>
			<div class="card-body p-4">
				<form action="/board/update" method="post">

					<div class="mb-4">
						<label for="no" class="form-label">작성자번호</label> <input
							type="text" class="form-control form-control-lg" id="no"
							name="no" value="${board.no}" readonly>
					</div>

					<div class="mb-4">
						<label for="writer" class="form-label">작성자</label>
						<div class="input-group">
							<span class="input-group-text"><i class="bi bi-person"></i></span>
							<input type="text" class="form-control" id="writer" name="writer"
								value="${board.writer}" required>
						</div>
					</div>

					<div class="mb-4">
						<label for="title" class="form-label">제목</label>
						<textarea class="form-control" id="title" name="title" rows="8"
							value="${board.writer}" style="resize: none;"></textarea>
					</div>
					<div class="mb-4">
						<label for="content" class="form-label">내용</label>
						<textarea class="form-control" id="content" name="content"
							rows="8" name="writer" value="${board.writer}"
							style="resize: none;">${board.content}</textarea>
					</div>

					<hr class="my-4">

					<div class="d-flex justify-content-end gap-2">
						<a href="/board/boardList"><button type="button"
								class="btn btn-outline-secondary">게시판리스트</button></a>
						<button type="submit" class="btn btn-primary btn-submit">
							</i> 수정전송
						</button>
						<button type="reset" class="btn btn-primary btn-submit">
							수정취소</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>