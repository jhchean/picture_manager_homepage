<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<style>
body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif;
}

body, html {
	height: 100%;
	color: #777;
	line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
	background-attachment: fixed;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
	background-image:
		url('https://www.w3schools.com/w3images/parallax1.jpg');
	min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
	background-image:
		url("https://www.w3schools.com/w3images/parallax2.jpg");
	min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
	background-image:
		url("https://www.w3schools.com/w3images/parallax3.jpg");
	min-height: 400px;
}

.w3-wide {
	letter-spacing: 10px;
}

.w3-hover-opacity {
	cursor: pointer;
}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
	.bgimg-1, .bgimg-2, .bgimg-3 {
		background-attachment: scroll;
	}
}
</style>
</head>
<body>

	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar" id="myNavbar">
			<a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right"
				href="javascript:void(0);" onclick="toggleFunction()"
				title="Toggle Navigation Menu"> <i class="fa fa-bars"></i>
			</a> 
			<a href="#home" class="w3-bar-item w3-button">HOME</a> 
			<!-- <a href="#about" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> ABOUT</a> -->
			
			<c:if test="${ !empty KEY}">
				<div id="">
				
				<%-- self.location = "${pageContext.request.contextPath}/multiUploadForm"; --%>
				<a href="#portfolio" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> PICTURE</a> 
				<!-- <a href="#contact" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> CONTACT</a> -->
					
				<a href="user/logout" class="w3-bar-item w3-button w3-hide-small">
				<i class="fa fa-info"></i>
				${KEY}님 환영합니다.  logout				  
				</a>
				</div>
			</c:if>	
				<a href="#" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
				  <i class="fa fa-search"></i>
			   </a>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo"
			class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
			<!-- <a href="#about" class="w3-bar-item w3-button" onclick="toggleFunction()">ABOUT</a> --> 
			<a href="${pageContext.request.contextPath}/multiUploadForm" class="w3-bar-item w3-button" > PICTURE</a>
			<!-- <a href="#portfolio" class="w3-bar-item w3-button" onclick="toggleFunction()"> PICTURE</a> -->
			<!-- <a href="#contact" class="w3-bar-item w3-button" onclick="toggleFunction()">CONTACT</a> -->
			<a href="#"	class="w3-bar-item w3-button">SEARCH</a>
		</div>
	</div>

	<!-- First Parallax Image with Logo Text -->
	<div class="bgimg-1 w3-display-container w3-opacity-min" id="home">
		<div class="w3-display-middle" style="white-space: nowrap;">
			<!-- <span
				class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"  onclick="document.getElementById('id01').style.display='block'" 	
				id="login">YOU MUST LOGON TO SEE MY PHOTO </span>
			<br><br><br> -->
			
			
			<span
				class="w3-center w3-padding-large w3-black w3-xlarge w3-wide w3-animate-opacity"  
				onclick="document.getElementById('id01').style.display='block'" 	
				id="login">LOGIN 
			</span>
				
				
		</div>
	</div>

	<!-- Container (About Section) -->
	<div class="w3-content w3-container w3-padding-64" id="about">
		<h3 class="w3-center">ABOUT ME</h3>
		<p class="w3-center">
			<em>I love photography</em>
		</p>
		<p>We have created a fictional "personal" website/blog, and our
			fictional character is a hobby photographer. Lorem ipsum dolor sit
			amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
			ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis
			nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
			consequat. Duis aute irure dolor in reprehenderit in voluptate velit
			esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat
			cupidatat non proident, sunt in culpa qui officia deserunt mollit
			anim id est laborum consectetur adipiscing elit, sed do eiusmod
			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
			veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
			ea commodo consequat.</p>
		<div class="w3-row">
			<div class="w3-col m6 w3-center w3-padding-large">
				<p>
					<b><i class="fa fa-user w3-margin-right"></i>My Name</b>
				</p>
				<br> <img
					src="https://www.w3schools.com/w3images/avatar_hat.jpg"
					class="w3-round w3-image w3-opacity w3-hover-opacity-off"
					alt="Photo of Me" width="500" height="333">
			</div>

			<!-- Hide this text on small devices -->
			<div class="w3-col m6 w3-hide-small w3-padding-large">
				<p>Welcome to my website. I am lorem ipsum consectetur
					adipiscing elit, sed do eiusmod tempor incididunt ut labore et
					dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
					exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate
					velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
					occaecat cupidatat non proident, sunt in culpa qui officia deserunt
					mollit anim id est laborum consectetur adipiscing elit, sed do
					eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim
					ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
					aliquip ex ea commodo consequat.</p>
			</div>
		</div>
		<p class="w3-large w3-center w3-padding-16">Im really good at:</p>
		<p class="w3-wide">
			<i class="fa fa-camera"></i>Photography
		</p>
		<div class="w3-light-grey">
			<div class="w3-container w3-padding-small w3-dark-grey w3-center"
				style="width: 90%">90%</div>
		</div>
		<p class="w3-wide">
			<i class="fa fa-laptop"></i>Web Design
		</p>
		<div class="w3-light-grey">
			<div class="w3-container w3-padding-small w3-dark-grey w3-center"
				style="width: 85%">85%</div>
		</div>
		<p class="w3-wide">
			<i class="fa fa-photo"></i>Photoshop
		</p>
		<div class="w3-light-grey">
			<div class="w3-container w3-padding-small w3-dark-grey w3-center"
				style="width: 75%">75%</div>
		</div>
	</div>

	<div class="w3-row w3-center w3-dark-grey w3-padding-16">
		<div class="w3-quarter w3-section">
			<span class="w3-xlarge">14+</span><br> Partners
		</div>
		<div class="w3-quarter w3-section">
			<span class="w3-xlarge">55+</span><br> Projects Done
		</div>
		<div class="w3-quarter w3-section">
			<span class="w3-xlarge">89+</span><br> Happy Clients
		</div>
		<div class="w3-quarter w3-section">
			<span class="w3-xlarge">150+</span><br> Meetings
		</div>
	</div>

	<!-- Second Parallax Image with Portfolio Text -->
	<div class="bgimg-2 w3-display-container w3-opacity-min">
		<div class="w3-display-middle">
			<span class="w3-xxlarge w3-text-white w3-wide">PORTFOLIO</span>
		</div>
	</div>

	<!-- Container (Portfolio Section) -->
	<div class="w3-content w3-container w3-padding-64" id="portfolio">
		<h3 class="w3-center">MY WORK</h3>
		<p class="w3-center">
			<em>Here are some of my latest lorem work ipsum tipsum.<br>
				Click on the images to make them bigger
			</em>
		</p>
		<br>

		<!-- Responsive Grid. Four columns on tablets, laptops and desktops. Will stack on mobile devices/small screens (100% width) -->
		
		
		<!-- 사진게시판 시작 -->
		
		<div class="w3-row-padding w3-center">
			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p1.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="The mist over the mountains">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>

			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p2.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Coffee beans">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>

			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p3.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Bear closeup">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>

			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p4.jpg"
					style="width: 100%" onclick="onClick(this)"
					class="w3-hover-opacity" alt="Quiet ocean">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>
		</div>



		<div class="w3-row-padding w3-center w3-section">
	
			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p5.jpg" 
					style="width: 100%" onclick="onClick(this)" 
					class="w3-hover-opacity" alt="The mist">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button> 					
			</div>

			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p6.jpg" style="width: 100%" onclick="onClick(this)" class="w3-hover-opacity" alt="My beloved typewriter">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>

			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p7.jpg" style="width: 100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Empty ghost train">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>

			<div class="w3-col m3">
				<img src="https://www.w3schools.com/w3images/p8.jpg" style="width: 100%" onclick="onClick(this)" class="w3-hover-opacity" alt="Sailing">
					<button class="btn delCard" style="float: right;" value="${filename }">Delete</button>
			</div>
		</div>		
		<!-- 사진게시판 끝 -->			
		<!-- 사진추가 공간 시작 -->
			<div class="w3-row-padding w3-center w3-section" id="pic_attach_div">
	
					<c:forEach items="${fullList }" var="item">
						
						<div class="w3-col m3">
							<img src="displayFile?fullList=${item }" 
										style="width: 100%;height:200px;" onclick="onClick(this)" 
										class="w3-hover-opacity" alt="The mist">
							<button class="btn delCard del" style="float: right;" >Delete</button>
							<input type="hidden" value="${item }" class="fullname"> 					
						</div>
						
					</c:forEach>
				
					<script>
					$(document).on("click", ".del", function(){
						var $button = $(this);
						var filename = $(this).next(".fullname").val();
						console.log(filename);
						 $.ajax({
							url:"deleteFile",
							type:"post",
							data:{filename : filename},
							success:function(result){
								$button.parent("div").remove();
							}
						}); 
					});
					</script>
		
				
			
			</div>
		<!-- 사진추가 공간 끝-->	
		
		
		
		<button  onclick="alertFilename()"><i class="fa fa-th">UPLOAD MORE</i></button>
		<ul id="file-list" >								
		</ul>	
		<form name='Form' action="multiUploadForm" method="post" enctype="multipart/form-data" >
			<input type="hidden" name="uid" value="${KEY}"> 
			<input type="file" id="files-upload" name="files" multiple="multiple" style="display:none"><br>
				
			<input type="submit" value="추가" /><input type="reset" value="취소">			
		</form>
		
		<script type="text/javascript">
				var filesUpload = document.getElementById("files-upload");  
    			var fileList = document.getElementById("file-list");

	            function alertFilename()
	            {
	            	document.Form.files.click();            	
	            }
	            
	        	function traverseFiles(files) {
					var li, file, fileInfo;
					fileList.innerHTML = "";

					for (var i = 0, il = files.length; i < il; i++) {
						li = document.createElement("li");
						file = files[i];
						fileInfo = "<strong>Name:</strong> "
								+ file.name  + " ";
						fileInfo += "<strong>Size:</strong> "
								+ file.size + " bytes ";
						fileInfo += "<strong>Type:</strong> "
								+ file.type + " " ;
						li.innerHTML = fileInfo;
						fileList.appendChild(li);
					}
					;
				};

				filesUpload.onchange = function() {
					traverseFiles(this.files);
				};

	    </script>
			
			
		
	</div>

	<!-- Modal for full size images on click-->
	<div id="modal01" class="w3-modal w3-black"
		onclick="this.style.display='none'">
		<span class="w3-button w3-large w3-black w3-display-topright"
			title="Close Modal Image"><i class="fa fa-remove"></i></span>
		<div
			class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
			<img id="img01" class="w3-image">
			<p id="caption" class="w3-opacity w3-large"></p>
		</div>
	</div>

	<!-- Third Parallax Image with Portfolio Text -->
	<div class="bgimg-3 w3-display-container w3-opacity-min">
		<div class="w3-display-middle">
			<span class="w3-xxlarge w3-text-white w3-wide">CONTACT</span>
		</div>
	</div>

	<!-- Container (Contact Section) -->
	<div class="w3-content w3-container w3-padding-64" id="contact">
		<h3 class="w3-center">WHERE I WORK</h3>
		<p class="w3-center">
			<em>I'd love your feedback!</em>
		</p>

		<div class="w3-row w3-padding-32 w3-section">
			<div class="w3-col m4 w3-container">
				<!-- Add Google Maps -->
				<!-- <div id="googleMap" class="w3-round-large w3-greyscale"		style="width: 100%; height: 400px;"></div> -->
				<!-- add naver map -->
				<div id="map" class="w3-round-large w3-greyscale" style="width: 100%; height: 400px;"></div>
			</div>
			<div class="w3-col m8 w3-panel">
				<div class="w3-large w3-margin-bottom">
					<i
						class="fa fa-map-marker fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i>
					Chicago, US<br> <i
						class="fa fa-phone fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i>
					Phone: +00 151515<br> <i
						class="fa fa-envelope fa-fw w3-hover-text-black w3-xlarge w3-margin-right"></i>
					Email: mail@mail.com<br>
				</div>
				<p>
					Swing by for a cup of <i class="fa fa-coffee"></i>, or leave me a
					note:
				</p>
				<form action="/action_page.php" target="_blank">
					<div class="w3-row-padding" style="margin: 0 -16px 8px -16px">
						<div class="w3-half">
							<input class="w3-input w3-border" type="text" placeholder="Name"
								required name="Name">
						</div>
						<div class="w3-half">
							<input class="w3-input w3-border" type="text" placeholder="Email"
								required name="Email">
						</div>
					</div>
					<input class="w3-input w3-border" type="text" placeholder="Message"
						required name="Message">
					<button class="w3-button w3-black w3-right w3-section"
						type="submit">
						<i class="fa fa-paper-plane"></i> SEND MESSAGE
					</button>
				</form>
			</div>
		</div>
	</div>


	<!-- login dialog -->

	
	<%@ include file="user/login.jsp"%>
	<%@ include file="user/joinForm.jsp"%>

	<!-- login dialog -->

	<!-- Footer -->
	<footer
		class="w3-center w3-black w3-padding-64 w3-opacity w3-hover-opacity-off">
		<a href="#home" class="w3-button w3-light-grey"><i
			class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
		<div class="w3-xlarge w3-section">
			<i class="fa fa-facebook-official w3-hover-opacity"></i> <i
				class="fa fa-instagram w3-hover-opacity"></i> <i
				class="fa fa-snapchat w3-hover-opacity"></i> <i
				class="fa fa-pinterest-p w3-hover-opacity"></i> <i
				class="fa fa-twitter w3-hover-opacity"></i> <i
				class="fa fa-linkedin w3-hover-opacity"></i>
		</div>
		<p>
			Powered by <a href="https://www.w3schools.com/w3css/default.asp"
				title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a>
		</p>
	</footer>

	<!-- Add Google Maps -->
	<script>
	/* 	function myMap() {
			myCenter = new google.maps.LatLng(37.3595704, 127.105399);
			var mapOptions = {
				center : myCenter,
				zoom : 12,
				scrollwheel : false,
				draggable : false,
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(document.getElementById("googleMap"),
					mapOptions);

			var marker = new google.maps.Marker({
				position : myCenter,
			});
			marker.setMap(map);
		} */

		// Modal Image Gallery
		function onClick(element) {
			document.getElementById("img01").src = element.src;
			document.getElementById("modal01").style.display = "block";
			var captionText = document.getElementById("caption");
			captionText.innerHTML = element.alt;
		}

		// Change style of navbar on scroll
		window.onscroll = function() {
			myFunction()
		};
		function myFunction() {
			var navbar = document.getElementById("myNavbar");
			if (document.body.scrollTop > 100
					|| document.documentElement.scrollTop > 100) {
				navbar.className = "w3-bar" + " w3-card-2" + " w3-animate-top"
						+ " w3-white";
			} else {
				navbar.className = navbar.className.replace(
						" w3-card-2 w3-animate-top w3-white", "");
			}
		}

		// Used to toggle the menu on small screens when clicking on the menu button
		function toggleFunction() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}
	</script>
	
	<!-- 구글용 -->
	<!-- <script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmeJ9ywWig31xuJCkIuiqQp99va-e0ewE&callback=myMap">
	 
	</script> -->
	
	
	<!-- 네이버용 -->
	
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=caV1xX4De6MFSFNAMvNW"></script>

	<script>
	 $(function(){
			var result = "${result}";
			if(result != ""){
				alert("가입되었습니다.");			
			}	
			
			var login = "${loginCond}";
			if(login == "SUCCESS"){
				alert("로그인 성공하였습니다...");
				$("#login").hide();
				//$("#logout").show();
				
			}else if(login == "FAIL"){
				alert("로그인 실패하였습니다...");
				//$("#logout").hide();
			}else {
				//$("#login").hide();
			}
			
			if ("${KEY}" != ""){
				$("#login").hide();
			}
			
			
			
	}); 
	
	var mapOptions = {
	    center: new naver.maps.LatLng(37.3595704, 127.105399),
	    zoom: 10
	};
	
	var map = new naver.maps.Map('map', mapOptions);
	</script>
	

</body>
</html>