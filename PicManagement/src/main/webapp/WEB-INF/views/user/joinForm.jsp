<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<meta charset="UTF-8">
<script>
$(function(){

	$("#chkId").click(function(){
		//중복확인 버튼 클릭
		var result = checkID();
		if(result != undefined){
			if(result == true){
				alert("가입가능한 아이디 입니다.");
				$("input[name='upw']").focus();
			}else{
				alert("이미 존재하는 아이디 입니다.");
				$("input[name='uid']").val("");
				$("input[name='uid']").focus();
			}
		}	
		return false;
	});	

});



function checkID(){
	var result;
	var checkId = $("input[name='uid']").val();
	console.log(checkId+">>>>>>>>>>>>>>>>>>>");
	if(checkId.length>0){
		$.ajax({
			url:"user/check/"+checkId,
			type:"get",
			dataType:"text",
			async:false,
			success:function(data){
				console.log(data);
				if(data == "SUCCESS"){
					result = true;					
				}else{
					result = false;					
				}
			}
		});
	}
	
	return result;
}

</script>

<body>
<div id="id02" class="modal" style="line-height: 0.1;">
	<form class="modal-content animate" action="user/join" method="post">
		<div class="imgcontainer">
      		<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      		<img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar">
    	</div>
    	
    	<div class="container" >
	      <label><b>Username</b></label>
	      <input type="text" placeholder="Enter Username" name="uname" required>
	      
	      <label><b>UserID</b></label>
	      <input type="text" placeholder="Enter ID" name="uid" required >
	      <button id="chkId" class="btn  default" ">CHECK ID</button>
		  
		  <label><b>Password</b></label>
	      <input type="password" placeholder="Enter Password" name="upw" required>
	      
	      
	      <label><b>Confirm Password</b></label>
	      <input type="password" placeholder="ReEnter Password" name="upassword_conf" required>
	      
	      
	      <label><b>Email</b></label>
	      <input type="text" placeholder="Email" name="uemail" required>
	      
	      
	      <label><b>Phone Number</b></label>
	      <input type="text" placeholder="Phone Number" name="uphonenumber" required>
	      
          <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>	        
	      <button type="submit" value="회원가입">JOIN</button>
	     
	    </div>

	</form>
</div>

	
</body>
</html>