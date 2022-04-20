<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.88.1">
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.1/examples/headers/">
<!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
<%-- 아이콘 --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
<link type="text/css" href="css/productlist.css" rel="stylesheet" >

<title>Log In</title>
</head>
<style>
	.contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
		font-family: "나눔명조";
		color:#463D3D;
	}
	
	#warning{
		color: #999191;
		font-size: 12px;
		text-align: center;
		font-family: "나눔명조"
	}
	
	#hyper{				
      	font-size: 14px;
      	font-family:"나눔명조";
      	color:#463D3D;
      	TEXT-DECORATION:none;
      }
   	
   	input{
   		margin:7px 0px;
   		width:224px;
	    height:32px;
   	}
   	
    button{
	    background-color: #F7CCB6;
	    color: #463D3D;
	    border: 1px solid #999191;
	    /* font-size: 1.0em; */
	    letter-spacing: 0px;
	    padding: 5px 0 0 0px;
	    cursor: pointer;
	    display: inline-block;
	   	margin-bottom : 10px;
	    transition: all 0.5s;    
	    width:224px;
	    height:32px;
	}
	button:hover{
	    background: #241571;
	    color: #FFFAF6;
	    transition: all 0.5s;
	}
	
</style>

<script id="alert" type="text/javascript">
	let alertTxt = '<%=(String)session.getAttribute("alertTxt")%>' ;
	if(alertTxt !== "null"){
		alert(alertTxt);
		<%
		session.removeAttribute("alertTxt");
		%>
	}
	
	/* 필수입력  */
	function checkid(){
		let id = document.getElementById("userID").value;
		let pw = document.getElementById("userPW").value;
		let warning = document.getElementById("Warning");

		if(id == ""){
			warning.innerHTML = '<p id="warning"> 아이디를 입력해주세요 </p>';
			return document.log.userID.focus();
		}
		
		if(pw == ""){
			warning.innerHTML = '<p id="warning"> 비밀번호를 입력해주세요 </p>';
			return document.log.userPW.focus();
		}
		else{
		 document.log.submit();			
		}
	}
	
	function noblank(obj) { // 공백사용못하게
	    var str_space = /\s/;  // 공백체크
	    if(str_space.exec(obj.value)) { //공백 체크
	        /* alert("해당 항목에는 공백을 사용할수 없습니다.\n\n공백은 자동적으로 제거 됩니다."); */
	        obj.focus();
	        obj.value = obj.value.replace(' ',''); // 공백제거
	        return false;
	    }
	 // onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"
	}
</script>

<body style="background-color:#FFFAF6">

<!-- 메인홈바 -->
	<nav id="navBar" class="navbar navbar-expand-lg navbar">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
				<!-- 상품 카테고리 한눈에 차라락 보여주기  -->
				<ul id="nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle"  id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Scent </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="sFList.do">Floral</a></li>
							<li><a class="dropdown-item" href="sCList.do">Citrus</a></li>
							<li><a class="dropdown-item" href="sFRList.do">Fresh</a></li>
							<li><a class="dropdown-item" href="sFTList.do">Fruity</a></li>
							<li><a class="dropdown-item" href="sWList.do">Woody</a></li>
							<li><a class="dropdown-item" href="sOList.do">Oriental</a></li>
						</ul>
					</li> 
				<!-- 상품별로 보여주기  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Perfume </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList.do">All</a></li>
							<li><a class="dropdown-item" href="pPList.do">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="pTList.do">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="pCList.do">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="pBList.do">Body Spray</a></li>
						</ul>
					</li>
					<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							About </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="noticeBoardList.do">Notice</a></li>
							<li><a class="dropdown-item" href="logInV.jsp">Q&A</a></li>
						</ul>
					</li>
				</ul>
				</ul>
				<!--로고 -->
      			  <div class="container col-12 col-lg-auto me-lg-auto mb-2 mb-md-0">
   					 <a class="navbar-brand" href="main">
   					   <img src="assets/logo.png"  alt="" width="300" height="150">
  					  </a>
				  </div>
      			 <!--검색하기  -->
				<form  class="d-flex">
					<input class="form-control me-2" type="search" placeholder="검색하기" aria-label="Search"> 
				</form>
				<!--검색,마이페이지,장바구니 아이콘  -->
				<div class="text-end">
					<k class="bi bi-search" style="font-size:2.1rem; cursor: pointer;" href="#"></k>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV'" ></i>
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" onclick = "cartListCheckUser()"></j>
				</div>
			</div>
		</div>
	</nav>

 <div class="contents">

	<div>
		<h1>LOG IN</h1>
	</div>  
 
 	<div >
 		<form action="logIn" method="post" name="log" >
 			<div>
				<div style="float: right;">
					<input type="text" name="userID" size="30" placeholder="아이디" id="userID" onkeyup="noblank(this)">
				</div>
			</div>
 			<div>
				<div style="float: right;">
					<input type="password" name="userPW" size="30" placeholder="비밀번호"	id="userPW" onkeyup="noblank(this)">
				</div>
			</div>
				<div>&nbsp;</div>
				<div id="Warning"></div>
 			<div>
				<div  align="right"><button type="button" onclick="checkid()">LOGIN</button> <br> </div> 
				<div  align="right"><button type="button" onclick="location.href='signAgreeV.jsp'">SIGNIN</button></div>
			</div>
 		</form>
 	</div>
 		<div style="float: right;">
 		<br><a id="hyper" href = "" target ="popup" onclick="window.open('findIDV.jsp','popup','width=600,height=600'); return false">아이디/비밀번호 찾기</a>
 		</div>
 </div>
 <!-- login 후 productDetail 띄우기 위한 productCode를 저장하는 세션 -->
 
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"crossorigin="anonymous"></script>
</body>
<script type="text/javascript">
var userID = '<%=session.getAttribute("userID")%>';
function cartListCheckUser() {
	if (userID != 'null'){
		location.href='cartList.do?userID='+userID;
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV.jsp';
	}
}
</script>
</html>