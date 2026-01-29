<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<i class="bi bi-pencil-square me-2"></i>게시판
				</h4>
			</div>
			<div class="card-body p-4">
				<form action="/board/insert" method="post">

					<div class="mb-4">
						<label for="title" class="form-label">제목</label> <input
							type="text" class="form-control form-control-lg" id="title"
							name="title" placeholder="제목을 입력해 주세요" required>
					</div>

					<div class="mb-4">
						<label for="writer" class="form-label">작성자</label>
						<div class="input-group">
							<span class="input-group-text"><i class="bi bi-person"></i></span>
							<input type="text" class="form-control" id="writer" name="writer"
								placeholder="작성자 성함" required>
						</div>
					</div>

					<div class="mb-4">
						<label for="content" class="form-label">내용</label>
						<textarea class="form-control" id="content" name="content"
							rows="8" placeholder="내용을 상세히 작성해 주세요" style="resize: none;"></textarea>
					</div>

					<hr class="my-4">

					<div class="d-flex justify-content-end gap-2">
						<a href="/board/boardList"><button type="button"
								class="btn btn-outline-secondary">게시판리스트</button></a>
						<button type="submit" class="btn btn-primary btn-submit">
							</i> 게시판전송
						</button>
						<button type="reset" class="btn btn-primary btn-submit">
							게시판삭제</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>