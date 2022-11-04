<%@ include file="../include/board/header.jsp"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판 입력</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/js/board.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/freeboard/freeboardWrite.css">
</head>
<body>
<form method="post" onsubmit="return check();" enctype="multipart/form-data">
<table class="freeboardWrite-table" border="1">
	<tr>
		<th colspan="2">자유게시판 입력</th>
	</tr>
	
	<tr>
		<th>글쓴이</th>
		<td><input name="board_writer" id="board_writer" size="14"/></td>
	</tr>
	<!-- <tr>
		<th>글쓴이</th>
		<td><input name="board_writer" value="${users.user_id}" size="14"/></td>
	</tr> -->
	
	<tr>
		<th>글제목</th>
		<td><input name="board_title" id="board_title" size="36"/></td>
	</tr>
	
	<tr>
		<th>글내용</th>
		<td><textarea name="board_cont" id="board_cont" rows="10" cols="38"></textarea>
	</tr>
	
	<tr>
		<th>파일첨부</th>
		<td><input type="file" name="board_image"/></td>
	</tr>
	
	<tr>
		<th colspan="27">
		<input type="submit" value="등록"/>
		<input type="reset" value="취소" onclick="$('#board_writer').focus();"/>
		<input type="button" value="목록" onclick="location='freeboard_list?page=${page}';"/>
	</tr>
</table>

	

</form>
</body>
</html>
<jsp:include page="../include/footer.jsp" />