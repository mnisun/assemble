/**
 * board.js
 */
 
 function check(){
 	$board_writer=$.trim($('#board_writer').val()); // trim()함수는 양쪽 공백을 제거
 	if($board_writer.length == 0){ // length속성은 문자 길이를 반환한다.
 		alert('글쓴이를 입력하세요');
 		$('#board_writer').val(''); // 글쓴이 입력박스 초기화
 		$('#board_writer').focus(); // 글쓴이 입력박스로 포커스 이동
 		return false;
 	}
 	
 	if($.trim($('#board_title').val()) == ''){
 		window.alert('글제목을 입력하세요!');
 		$('#board_title').val('').focus();
 		return false;
 	}
 	if($.trim($('#board_cont').val()).length == 0){
 		alert('글내용을 입력하세요!');
 		$('#board_cont').val('').focus();
 		return false;
 	}
 }// check()