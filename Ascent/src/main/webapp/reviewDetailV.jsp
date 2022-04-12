<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ascent 상품 리뷰</title>
<style>
	  table {
        border-collapse: collapse;
        border-top: 2px solid black;
        width: auto;
        height: auto;
      }
      
      table, th, td {
        padding: 5px;
       }
       
      .contents{
		position: absolute;
		left : 50%;
		transform : translate(-50%,0%);
		padding: 50px ;
	}   
</style>
</head>
<body bgcolor="#FFFAF6">
	 <div class="contents">
	<table border="1">
		<form action="reviewDelete.do" method="post">
			<tr>
				<td>글번호</td>
				<td><input type="text" name="reviewCode" size="5" value="${reviewDetailV.reviewCode}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>제목</td>
				<td><input type="text" name="reviewTitle" size="15" value="${reviewDetailV.reviewType}" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>내용</td>
				<td><input type="text" name="reviewContent" size="61" value="${reviewDetailV.reviewTitle }" readonly="readonly"></td>
			</tr>			
			<tr>
				<td>첨부파일</td>
				<td><input type="text" name="reviewImage" size="25" value="${reviewDetailV.reviewDate}" readonly="readonly"></td>
			</tr>						
			<tr>
				<td><a href="reviewList.do">목록보기</a></td>
				<td colspan="2" align="right"><input type="submit" value="삭제"></td>
			</tr>
	</table>	
	</div>		
</body>
</html>