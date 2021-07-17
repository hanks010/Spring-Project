<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
</head>

<body>
	<!-- App -->
	<div id="app">

		<%-- include header.jsp --%>
		<%@ include file="../includes/header.jsp"%>

		<div class="container">

			<div class="row">
				<h4 class="center-align">게시판 글내용</h4>
				<hr style="margin-bottom: 50px;">
			</div>

			<div class="row">
				<div class="col s12 l8 offset-l2">
					<div class="card">
						<div class="card-image">
							<img src="imgs/praha.jpg">
						</div>
						<div class="card-content">
							<span class="card-title">"${rboard.title}"</span>
							<p>"${rboard.intro}"</p>
						</div>
						<div class="card-content">
							<span class="card-title">"${rboard.user.id}"</span>
							<p>"${rboard.cookingTime}"</p>
							<p>"${rboard.howMany}"</p>
							<p>"${rboard.difficulty}"</p>
							
						</div>

						<div class="card-action">
							<a href="#!">첨부파일1</a> <a href="#!">첨부파일2</a> <a href="#!">첨부파일3</a>
						</div>
					</div>
				</div>
			</div>


			<div class="row center-align">
				<div class="col s12 l8 offset-l2">
					<div class="col s6 m3">
						<a class="btn-large waves-effect waves-light"> <i
							class="material-icons left">edit</i> 글수정
						</a>
					</div>
					<div class="col s6 m3">
						<a class="btn-large waves-effect waves-light"> <i
							class="material-icons left">delete</i> 글삭제
						</a>
					</div>
					<div class="col s6 m3">
						<a class="btn-large waves-effect waves-light"> <i
							class="material-icons left">reply</i> 답글쓰기
						</a>
					</div>
					<div class="col s6 m3">
						<a class="btn-large waves-effect waves-light"
							href="boardList.html"> <i class="material-icons left">list</i>
							글목록
						</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col s12 l8 offset-l2">
					<blockquote>
						[글수정] 버튼을 눌러서 현재 글을 수정할 수 있어요.<br> [글삭제] 버튼을 눌러서 현재 글을 삭제할 수
						있어요.<br> [답글쓰기] 버튼을 눌러서 현재 글에 대한 답글을 등록할 수 있어요.<br>
						글목록으로 가시려면 [글목록] 버튼을 누르세요.
					</blockquote>
				</div>
			</div>


		</div>
		<!-- end of Container -->


		<!-- Footer -->
		<%-- include footer.jsp --%>
		<%@ include file="../includes/footer.jsp"%>
		<!-- end of Footer -->

	</div>
	<!-- end of App -->



	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script>
		const sideNav = document.querySelector('.sidenav');
		M.Sidenav.init(sideNav, {});
	</script>
</body>

</html>