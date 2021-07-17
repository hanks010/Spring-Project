<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">

/* @extend display-flex; */
display-flex, .header, .form-group {
	display: flex;
	display: -webkit-flex;
}

/* @extend list-type-ulli; */
list-type-ulli {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

/* poppins-300 - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 300;
	src: url("../fonts/poppins/poppins-v5-latin-300.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Light"), local("Poppins-Light"),
		url("../fonts/poppins/poppins-v5-latin-300.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-300.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-300.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-300.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-300.svg#Poppins") format("svg");
	/* Legacy iOS */
}
/* poppins-300italic - latin */
@font-face {
	font-family: 'Poppins';
	font-style: italic;
	font-weight: 300;
	src: url("../fonts/poppins/poppins-v5-latin-300italic.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Light Italic"), local("Poppins-LightItalic"),
		url("../fonts/poppins/poppins-v5-latin-300italic.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-300italic.woff2")
		format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-300italic.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-300italic.ttf")
		format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-300italic.svg#Poppins")
		format("svg");
	/* Legacy iOS */
}
/* poppins-regular - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 400;
	src: url("../fonts/poppins/poppins-v5-latin-regular.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Regular"), local("Poppins-Regular"),
		url("../fonts/poppins/poppins-v5-latin-regular.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-regular.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-regular.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-regular.ttf")
		format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-regular.svg#Poppins")
		format("svg");
	/* Legacy iOS */
}
/* poppins-italic - latin */
@font-face {
	font-family: 'Poppins';
	font-style: italic;
	font-weight: 400;
	src: url("../fonts/poppins/poppins-v5-latin-italic.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Italic"), local("Poppins-Italic"),
		url("../fonts/poppins/poppins-v5-latin-italic.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-italic.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-italic.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-italic.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-italic.svg#Poppins")
		format("svg");
	/* Legacy iOS */
}
/* poppins-500 - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 500;
	src: url("../fonts/poppins/poppins-v5-latin-500.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Medium"), local("Poppins-Medium"),
		url("../fonts/poppins/poppins-v5-latin-500.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-500.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-500.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-500.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-500.svg#Poppins") format("svg");
	/* Legacy iOS */
}
/* poppins-500italic - latin */
@font-face {
	font-family: 'Poppins';
	font-style: italic;
	font-weight: 500;
	src: url("../fonts/poppins/poppins-v5-latin-500italic.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Medium Italic"), local("Poppins-MediumItalic"),
		url("../fonts/poppins/poppins-v5-latin-500italic.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-500italic.woff2")
		format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-500italic.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-500italic.ttf")
		format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-500italic.svg#Poppins")
		format("svg");
	/* Legacy iOS */
}
/* poppins-600 - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 600;
	src: url("../fonts/poppins/poppins-v5-latin-600.eot");
	/* IE9 Compat Modes */
	src: local("Poppins SemiBold"), local("Poppins-SemiBold"),
		url("../fonts/poppins/poppins-v5-latin-600.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-600.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-600.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-600.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-600.svg#Poppins") format("svg");
	/* Legacy iOS */
}
/* poppins-700 - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 700;
	src: url("../fonts/poppins/poppins-v5-latin-700.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Bold"), local("Poppins-Bold"),
		url("../fonts/poppins/poppins-v5-latin-700.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-700.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-700.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-700.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-700.svg#Poppins") format("svg");
	/* Legacy iOS */
}
/* poppins-700italic - latin */
@font-face {
	font-family: 'Poppins';
	font-style: italic;
	font-weight: 700;
	src: url("../fonts/poppins/poppins-v5-latin-700italic.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Bold Italic"), local("Poppins-BoldItalic"),
		url("../fonts/poppins/poppins-v5-latin-700italic.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-700italic.woff2")
		format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-700italic.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-700italic.ttf")
		format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-700italic.svg#Poppins")
		format("svg");
	/* Legacy iOS */
}
/* poppins-800 - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 800;
	src: url("../fonts/poppins/poppins-v5-latin-800.eot");
	/* IE9 Compat Modes */
	src: local("Poppins ExtraBold"), local("Poppins-ExtraBold"),
		url("../fonts/poppins/poppins-v5-latin-800.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-800.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-800.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-800.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-800.svg#Poppins") format("svg");
	/* Legacy iOS */
}
/* poppins-800italic - latin */
@font-face {
	font-family: 'Poppins';
	font-style: italic;
	font-weight: 800;
	src: url("../fonts/poppins/poppins-v5-latin-800italic.eot");
	/* IE9 Compat Modes */
	src: local("Poppins ExtraBold Italic"), local("Poppins-ExtraBoldItalic"),
		url("../fonts/poppins/poppins-v5-latin-800italic.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-800italic.woff2")
		format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-800italic.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-800italic.ttf")
		format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-800italic.svg#Poppins")
		format("svg");
	/* Legacy iOS */
}
/* poppins-900 - latin */
@font-face {
	font-family: 'Poppins';
	font-style: normal;
	font-weight: 900;
	src: url("../fonts/poppins/poppins-v5-latin-900.eot");
	/* IE9 Compat Modes */
	src: local("Poppins Black"), local("Poppins-Black"),
		url("../fonts/poppins/poppins-v5-latin-900.eot?#iefix")
		format("embedded-opentype"),
		url("../fonts/poppins/poppins-v5-latin-900.woff2") format("woff2"),
		url("../fonts/poppins/poppins-v5-latin-900.woff") format("woff"),
		url("../fonts/poppins/poppins-v5-latin-900.ttf") format("truetype"),
		url("../fonts/poppins/poppins-v5-latin-900.svg#Poppins") format("svg");
	/* Legacy iOS */
}

a:focus, a:active {
	text-decoration: none;
	outline: none;
	transition: all 300ms ease 0s;
	-moz-transition: all 300ms ease 0s;
	-webkit-transition: all 300ms ease 0s;
	-o-transition: all 300ms ease 0s;
	-ms-transition: all 300ms ease 0s;
}

input, select, textarea {
	outline: none;
	appearance: unset !important;
	-moz-appearance: unset !important;
	-webkit-appearance: unset !important;
	-o-appearance: unset !important;
	-ms-appearance: unset !important;
}

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	appearance: none !important;
	-moz-appearance: none !important;
	-webkit-appearance: none !important;
	-o-appearance: none !important;
	-ms-appearance: none !important;
	margin: 0;
}

input:focus, select:focus, textarea:focus {
	outline: none;
	box-shadow: none !important;
	-moz-box-shadow: none !important;
	-webkit-box-shadow: none !important;
	-o-box-shadow: none !important;
	-ms-box-shadow: none !important;
}

input[type=checkbox] {
	appearance: checkbox !important;
	-moz-appearance: checkbox !important;
	-webkit-appearance: checkbox !important;
	-o-appearance: checkbox !important;
	-ms-appearance: checkbox !important;
}

input[type=radio] {
	appearance: radio !important;
	-moz-appearance: radio !important;
	-webkit-appearance: radio !important;
	-o-appearance: radio !important;
	-ms-appearance: radio !important;
}

img {
	max-width: 100%;
	height: auto;
}

figure {
	margin: 0;
}

p {
	margin-bottom: 0px;
}

h1 {
	line-height: 1.8;
	margin: 0;
	padding: 0;
	font-weight: bold;
	color: #fff;
	font-family: Poppins;
	font-size: 21px;
	text-align: center;
	margin-bottom: 28px;
}

.clear {
	clear: both;
}

body {
	font-size: 14px;
	line-height: 1.8;
	/* color: #fff; */
	background-image: url("../images/form-img.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	-moz-background-size: cover;
	-webkit-background-size: cover;
	-o-background-size: cover;
	-ms-background-size: cover;
	background-position: center center;
	font-weight: 600;
	font-family: Poppins;
	margin: 0px;
}

.main {
	position: relative;
}

.container {
	width: 960px;
	margin: 265px auto;
	border-radius: 10px;
	-moz-border-radius: 10px;
	-webkit-border-radius: 10px;
	-o-border-radius: 10px;
	-ms-border-radius: 10px;
}

.booking-form {
	padding: 35px 70px 51px 70px;
}

.header {
	align-items: center;
	-moz-align-items: center;
	-webkit-align-items: center;
	-o-align-items: center;
	-ms-align-items: center;
	justify-content: space-between;
	-moz-justify-content: space-between;
	-webkit-justify-content: space-between;
	-o-justify-content: space-between;
	-ms-justify-content: space-between;
	padding: 50px 57px;
}

input {
	border: none;
	background: #fff;
	border-radius: 5px;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
	-ms-border-radius: 5px;
	box-sizing: border-box;
	width: 100%;
	padding: 13px 20px;
	font-size: 16px;
	font-weight: 600;
	color: #222;
	display: block;
	font-family: Poppins;
	position: relative;
	z-index: 9;
}

input::-webkit-input-placeholder {
	color: #999;
}

input::-moz-placeholder {
	color: #999;
}

input:-ms-input-placeholder {
	color: #999;
}

input:-moz-placeholder {
	color: #999;
}

.submit {
	background: #f8ba0f;
	color: #fff;
	font-size: 14px;
	margin-top: 23px;
	padding: 15px 20px;
	cursor: pointer;
}

.submit:hover {
	background-color: #ce9906;
}

label {
	font-size: 12px;
	font-weight: 500;
	margin-bottom: 2px;
	display: block;
}

#quantity {
	color: #999;
}

.form-group {
	align-items: center;
	-moz-align-items: center;
	-webkit-align-items: center;
	-o-align-items: center;
	-ms-align-items: center;
	justify-content: space-between;
	-moz-justify-content: space-between;
	-webkit-justify-content: space-between;
	-o-justify-content: space-between;
	-ms-justify-content: space-between;
}

.form-destination {
	width: 230px;
}

.form-date-from, .form-date-to {
	width: 155px;
}

.form-quantity {
	width: 80px;
	position: relative;
}

.form-submit {
	width: 140px;
}

.modify-qty {
	position: absolute;
	right: 12px;
	font-size: 18px;
	color: #999;
	z-index: 99;
	cursor: pointer;
}

.plus {
	top: 23px;
}

.minus {
	bottom: 0px;
}

.form-icon {
	position: relative;
}

.ui-datepicker-trigger {
	position: absolute;
	right: 16px;
	top: 40px;
	color: #999;
	font-size: 16px;
	z-index: 99;
	background: transparent;
	border: none;
	outline: none;
	cursor: pointer;
}

@media screen and (max-width: 768px) {
	.container {
		width: calc(100% - 30px);
		max-width: 100%;
	}
	.form-group {
		flex-direction: column;
		-moz-flex-direction: column;
		-webkit-flex-direction: column;
		-o-flex-direction: column;
		-ms-flex-direction: column;
	}
	.form-destination, .form-date-from, .form-date-to, .form-quantity {
		width: 100%;
		margin-bottom: 20px;
	}
}

@media screen and (max-width: 480px) {
	.booking-form {
		padding: 35px 30px 51px 30px;
	}
}
/*# sourceMappingURL=style.css.map */
</style>
</head>

<body>
	<div class="container">
		<h4>레시피 등록</h4>
		<br />
		<h5>레시피 소개</h5>
		<hr />
		<form action="/rboard/insert" id="rboardInsert"
			onsubmit="insert(event)" method="post">
			<div class="mb-3 row">
				<label for="title" class="col-sm-2 col-form-label">레시피 제목</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="title" id="title">
				</div>
			</div>
			<div class="mb-3 row">
				<label for="intro" class="col-sm-2 col-form-label">요리 소개</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="intro" id="intro">
				</div>
			</div>
			<label for="title" class="col-sm-2 col-form-label">카테고리</label> <span>
				<select class="form-select form-select-lg mb-3"
				aria-label=".form-select-lg" name="category">
					<option selected>레시피 분류를 선택하세요</option>
					<c:forEach items="${categories}" var="category">
						<option value="${category.categoryName}">${category.categoryName}</option>
					</c:forEach>
			</select>
			</span> <br /> <label for="intro" class="col-sm-2 col-form-label">요리정보</label>
			<span> <select class="form-select form-select-lg mb-3 mr-3"
				aria-label=".form-select-lg" name="cookingTime">
					<option selected>조리시간</option>
					<option value="5분 이하">5분 이햐</option>
					<option value="10분">10분</option>
					<option value="15분">15분</option>
					<option value="20분">20분</option>
					<option value="25분">25분</option>
					<option value="30분">30분</option>
					<option value="45분">45분</option>
					<option value="1시간">1시간</option>
					<option value="1시간 초과">1시간 초과</option>
			</select> <select class="form-select form-select-lg mb-3 mr-3"
				aria-label=".form-select-lg" name="howMany">
					<option selected>인분</option>
					<option value="1인분">1인분</option>
					<option value="2인분">2인분</option>
					<option value="3인분">3인분</option>
					<option value="4인분">4인분</option>
					<option value="5인분">5인분</option>
					<option value="6인분 이상">6인분 이상</option>
			</select> <select class="form-select form-select-lg mb-3 mr-3"
				aria-label=".form-select-lg" name="difficulty">
					<option selected>난이도</option>
					<option value="상">상</option>
					<option value="중">중</option>
					<option value="하">하</option>
			</select>
			</span> <br /> <br />
			<h5>재료</h5>
			<hr />

			<select onchange="changed(this.value)"
				class='form-select form-select-lg mb-3 mr-3 select1' id="select1"
				aria-label='.form-select-lg' name="materialcategory">
				<option selected>재료 분류</option>
				<c:forEach items="${matCategorylists}" var='category'>
					<option value='${category.materialCategoryid}'>${category.categoryName}</option>
				</c:forEach>
			</select> <select class='select2 form-select form-select-lg mb-3 mr-3'
				id="select2" aria-label='.form-select-lg' name="material">
				<option selected>재료</option>
			</select> <select class='form-select form-select-lg mb-3 mr-3' id="select3"
				aria-label='.form-select-lg' name="materialQty">
				<option selected>수량</option>
				<c:forEach var='i' begin='1' end='10'>
					<option value='${i}'>${i}</option>
				</c:forEach>
			</select>

			<div class="select">
				<!-- 추가 select 들어감 -->
			</div>
			<button type="button" id="btnAdd" class="smallbtn btn-secondary mb-3">추가</button>

			<br /> <br />
			<h5>조리법</h5>
			<hr />
			<div class="mb-3">
				<label for="content" class="form-label"></label>
				<textarea class="form-control" id="content" name="content"
					placeholder="조리법을 입력하세요" rows="3"></textarea>
			</div>
			<br />
			<hr />
			<div class="mb-3">
				<label for="rboardFile" class="form-label">조리된 사진</label> <input
					class="form-control" type="file" name="rboardFile" id="rboardFile">
			</div>
			<br />
			<button class="btn btn-dark btn-lg offset-6" type="submit">등록</button>
			<br /> <br />
		</form>
	</div>
	<script>
	
	function insert(e){
		e.preventDefault();
		let data = $("#rboardInsert").serialize();
		console.log(data);
	
		$.ajax({
			type: "POST",
			url :"/rboard/user/insert",
			data: data,
			contentType: "application/x-www-form-urlencoded; charset=utf-8",
			dataType:"json" 
		}).done(res=>{
			alert("성공");
			console.log("업데이트 성공");
			location.href = "/";
		}).fail(error=>{
			console.log(error);
		})

	}
	

		var materialOption = new Array();
		<c:forEach items="${materiallist}" var ="material">
		materialOption.push({
			categoryid : "${material.materialCategory.materialCategoryid}",
			materialid : "${material.materialid}",
			name : "${material.materialName}"
		});
		</c:forEach>
		
		function changed(s1Val) {

			$(".select2").html("");

			var option = document.createElement("option")

			for (var i = 0; i < materialOption.length; i++) {
				if (materialOption[i].categoryid == s1Val) {
					console.log(i, materialOption[i].categoryid);
					console.log(i, materialOption[i].name);
					option = document.createElement("option")
					option.innerText = materialOption[i].name;
					option.value = materialOption[i].materialid;
					$(".select2").append(option);
				}
			}
			console.log($(".select2 option:selected").val());
		}

		$("#btnAdd")
				.click(
						function() {
							var sel1Val;
							var sel2Val;
							var sel3Val;

							$(".select").html("");
							var sel1 = "<select onchange='changed2(this.value)' class='form-select form-select-lg mb-3 mr-3 s1'";
							sel1 += "data-mid='1' aria-label='.form-select-lg'>";
							sel1 += "<option selected>재료 분류</option>";
							sel1 += "<c:forEach items='${matCategorylists}' var='category'>";
							sel1 += "<option value='${category.materialCategoryid}'>${category.categoryName}</option>";
							sel1 += "</c:forEach> </select>";

							$(".select").append(sel1);

							var sel2 = "<select class='s2 form-select form-select-lg mb-3 mr-3'";
							sel2 += "data-mid='2' aria-label='.form-select-lg'>";
							sel2 += "<option selected>재료</option>";
							sel2 += "</select>";

							$(".select").append(sel2);
							sel1Val += 2;

							var sel3 = "<select class='form-select form-select-lg mb-3 mr-3' s3 ";
					sel3 +=	"aria-label='.form-select-lg'>";
							sel3 += "<option selected>수량</option>";
							sel3 += "<c:forEach var ='i' begin='1' end='10'>";
							sel3 += "<option value='${i}'>${i}</option>";
							sel3 += "</c:forEach>";
							sel3 += "</select><br/>";

							$(".select").append(sel3);

						})
						
						function changed2(s1Val) {

			$(".s2").html("");

			var option = document.createElement("option")

			for (var i = 0; i < materialOption.length; i++) {
				if (materialOption[i].categoryid == s1Val) {
					console.log(i, materialOption[i].categoryid);
					console.log(i, materialOption[i].name);
					option = document.createElement("option")
					option.innerText = materialOption[i].name;
					option.value = materialOption[i].materialid;
					$(".s2").append(option);
				}
			}
		}

	</script>
</body>
</html>