<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">
    <!-- Bootstrap core CSS -->
	<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- 메인홈바  CSS -->
	<link type="text/css" href="css/productlist.css" rel="stylesheet" >
	 
	 <!-- Custom styles for this template -->
    <link href="headers.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
  <%-- 아이콘 --%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>ascent</title>
<!-- 상품에 마우스 올릴때 및 위치 조정  -->
<style>
 .py-5 div:hover {
  border-color:#333;     
 }   
  .col {
  padding:70px 70px 0 70px;
  } 

  .detail-text-center {
  padding:15px;
  height:140px;
  text-align:center;
  }
  .card-img-top{
  width: 100%; 
  height: 22rem;
  object-fit: cover;
  }  
 </style>
</head>
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
					
				<!-- 상품 센트별로 보여주기  -->
					<ul id="nav">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Scent </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList">All</a></li>
							<li><a class="dropdown-item" href="productscentfloralList">Floral</a></li>
							<li><a class="dropdown-item" href="productscentcitruslist">Citrus</a></li>
							<li><a class="dropdown-item" href="productscentfreshlist">Fresh</a></li>
							<li><a class="dropdown-item" href="productscentfruitylist">Fruity</a></li>
							<li><a class="dropdown-item" href="productscentwoodylist">Woody</a></li>
							<li><a class="dropdown-item" href="productscentoritentallist">Oriental</a></li>
						</ul>
					</li> 
				<!-- 부향로 보여주기  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Perfume </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="allList">All</a></li>
							<li><a class="dropdown-item" href="productperfumelist">Eau de perfume</a></li>
							<li><a class="dropdown-item" href="producttotilettelist">Eau de toilette</a></li>
							<li><a class="dropdown-item" href="productcolongelist">Eau de cologne</a></li>
							<li><a class="dropdown-item" href="productbodyspraylist">Body Spray</a></li>
						</ul>
					</li>
				<!-- 1:1문의 ,공지사항, 상품문의  -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							About </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="noticeBoardList.do">Notice</a></li>
							<%
							if(session.getAttribute("userID") == null){
							%>
							<li><a class="dropdown-item" href="logInV">Q&A</a></li>
							<%
							}else if(session.getAttribute("userID") != null){
							%>
							<li><a class="dropdown-item" href="counselList.do">Q&A</a></li>
						  <% } %>
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
      			 <!--검색내용  -->
				<form  class="d-flex" method="post" action="productsearch" >
				<div>
					<input value="${param.searchText }" type="text"  class="form-control me-2" placeholder="검색하기" name="searchText" aria-label="Search"> 
				</div>
				
					<div class="text-end">
					
					<!--  검색 -->
					<div> 
				<button type="submit" class="btn text-white">
                  <svg xmlns="http://www.w3.org/2000/svg"  width="20" height="20" fill="currentColor" class="bi bi-search-heart" viewBox="0 0 14 14 ">
				  <path d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z"/>
 				 <path d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z"/>
				</svg>
				<span class="visually-hidden"></span>
                </button>
				 </div> 
				 </div>
				</form>
				
				<!-- 마이페이지 -->
					<% 
				 	 if(session.getAttribute("userID") == null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='logInV'" ></i>
					<%
					}else if(session.getAttribute("userID") != null){
					%>
					<i class="bi bi-person-fill" style="font-size:2.5rem;cursor: pointer;" onclick = "location.href='myPageV'" ></i>
				  <% } %>
				  <!-- 장바구니 -->
					<j  class="bi bi-bag-heart" style="font-size:2.3rem; cursor: pointer;" onclick = "cartListCheckUser()"></j>
					
				</div>
			</div>
	</nav>
	
	
	
<!-- Header-->
     <!--    <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">shop</h1>
                    <p class="lead fw-normal text-white-50 mb-0">find your own scent</p>
                </div>
            </div>
        </header> -->
     
<!-- 상품 -->
               			   <section class="py-5">
               			  <div class="row row-cols-1 row-cols-md-4 g-4">
		  					<c:forEach items="${sFRList }" var="dto"><%--반복문,dto --%>
 								 <div class="col">
   									 <div class="card h-100">
   									  <a class="card-image" href="productDetailV.?productCode=${dto.productCode }">
   									  <img class="card-img-top" src="${dto.productImages}" alt="" /></a>
     								 <div class="card-body">
     								  <div class="detail-text-center">
                              	     <p style="font-size: 15px;" class="pd.name">${dto.productName }</p>
                                    <!-- Product size-->
                             		<p style="font-size: 13px;" class="pd.size">${dto.productSize }ml</p>
                                    <!-- Product price-->
                                	<p style="font-size: 16px;" class="pd.price">${dto.productPrice }원</p>
                             	
    				 		 </div>
    				 		 </div>
    				 		 </div>
    				 		 </div>
               		 </c:forEach>
  				  </div>
  				  </section>
                          
                
           
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
<script type="text/javascript">
function cartListCheckUser() {
	if (userID != 'null'){
		location.href='cartList.do?userID='+userID;
	}
	else{
		alert("로그인이 필요합니다.");
		location.href='logInV';
	}
}
</script>
</html>