<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>T1 Community | Mission Detail</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<style>
:root {
	--t1-red: #E2012D;
	--t1-black: #0f0f0f;
	--t1-gray: #1a1a1a;
	--t1-gold: #C69C6D;
	--t1-border: rgba(226, 1, 45, 0.3);
}

body {
	background-color: var(--t1-black);
	font-family: 'Pretendard', sans-serif;
	color: #ffffff;
	margin: 0;
	padding: 50px 0;
	background-image: radial-gradient(circle at 10% 20%, rgba(226, 1, 45, 0.05)
		0%, transparent 40%);
}

.detail-container {
	max-width: 850px;
	margin: 0 auto;
	background: var(--t1-gray);
	border: 1px solid var(--t1-border);
	border-radius: 20px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5), 0 0 20px
		rgba(226, 1, 45, 0.1);
	overflow: hidden;
}

/* 상단 헤더 영역 */
.detail-header {
	background: linear-gradient(145deg, #1e1e1e, #151515);
	padding: 40px;
	border-bottom: 1px solid rgba(255, 255, 255, 0.05);
}

.post-no {
	color: var(--t1-red);
	font-weight: 800;
	font-size: 0.85rem;
	text-transform: uppercase;
	letter-spacing: 2px;
	display: block;
	margin-bottom: 12px;
}

.detail-header h1 {
	margin: 0;
	font-size: 2.2rem;
	font-weight: 800;
	letter-spacing: -1px;
	line-height: 1.3;
}

.post-info {
	margin-top: 25px;
	padding-top: 20px;
	border-top: 1px solid rgba(255, 255, 255, 0.1);
	font-size: 0.95rem;
	color: #aaa;
	display: flex;
	align-items: center;
	gap: 25px;
}

.post-info span i {
	color: var(--t1-red);
	margin-right: 6px;
}

.post-info b {
	color: #fff;
	margin-left: 4px;
}

.post-info .writer-gold {
	color: var(--t1-gold);
}

/* 본문 영역 */
.detail-content {
	padding: 50px 40px;
	min-height: 350px;
	line-height: 1.9;
	font-size: 1.15rem;
	color: #e0e0e0;
	white-space: pre-wrap;
	background: rgba(255, 255, 255, 0.02);
}

/* 하단 버튼 영역 */
.btn-area {
	padding: 25px 40px;
	background: #111;
	border-top: 1px solid rgba(255, 255, 255, 0.05);
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.btn-t1 {
	padding: 10px 24px;
	font-weight: 700;
	border-radius: 8px;
	text-decoration: none;
	transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
	font-size: 0.95rem;
	display: inline-flex;
	align-items: center;
	gap: 8px;
}

.btn-list {
	background: #333;
	color: #eee;
	border: 1px solid #444;
}

.btn-list:hover {
	background: #444;
	color: #fff;
}

.btn-edit {
	background: var(--t1-gold);
	color: #000;
}

.btn-edit:hover {
	background: #b08a5d;
	transform: translateY(-2px);
}

.btn-delete {
	background: transparent;
	color: var(--t1-red);
	border: 1px solid var(--t1-red);
}

.btn-delete:hover {
	background: var(--t1-red);
	color: #fff;
	transform: translateY(-2px);
}

/* 푸터 데코레이션 */
.footer-deco {
	padding: 20px;
	text-align: center;
	font-family: 'Courier New', Courier, monospace;
	font-size: 0.75rem;
	color: #555;
	background: #0a0a0a;
	letter-spacing: 1px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="detail-container">
			<div class="detail-header">
				<span class="post-no"><i class="bi bi-hash"></i> Mission No.
					${board.no}</span>
				<h1>${board.title}</h1>

				<div class="post-info">
					<span><i class="bi bi-person-fill"></i>WRITER: <b
						class="writer-gold">${board.writer}</b></span> <span><i
						class="bi bi-calendar3"></i>DATE: <b><fmt:formatDate
								value="${board.regDate}" pattern="yyyy.MM.dd HH:mm" /></b></span>
				</div>
			</div>

			<div class="detail-content">${board.content}</div>

			<div class="btn-area">
				<a href="/board/boardList" class="btn-t1 btn-list"> <i
					class="bi bi-chevron-left"></i> LIST
				</a>

				<div class="d-flex gap-2">
					<a href="/board/updateForm?no=${board.no}" class="btn-t1 btn-edit">
						<i class="bi bi-pencil-fill"></i> EDIT
					</a> <a href="/board/delete?no=${board.no}" class="btn-t1 btn-delete"
						onclick="return confirm('이 미션 데이터를 영구 삭제하시겠습니까?')"> <i
						class="bi bi-trash3-fill"></i> DELETE
					</a>
				</div>
			</div>

			<div class="footer-deco">[ DATA ARCHIVE: T1 COMMUNITY SECURE
				TERMINAL - VERSION 2.0 ]</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>