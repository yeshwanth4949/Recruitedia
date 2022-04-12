<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login/Registration Form</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
  
    
    <link href="css/style.css" type="text/css"  rel="stylesheet"/>
  
  
  <style type="text/css">
  *, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
  background:#c8c8c8;
}

input, button {
  border: none;
  outline: none;
  background: none;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}



.tip {
  font-size: 20px;
  margin: 40px auto 50px;
  text-align: center;
}

.cont {
  overflow: hidden;
  position: relative;
  width: 900px;
  height: 750px;
  margin: 0 auto 100px;
  background: #FFFFFF	;
}

.form {
  position: relative;
  width: 640px;
  height: 100%;
  transition: transform 1.2s ease-in-out;
  padding: 50px 30px 0;
}

.sub-cont {
  overflow: hidden;
  position: absolute;
  left: 640px;
  top: 0;
  width: 900px;
  height: 100%;
  padding-left: 260px;
  background: #fff;
  transition: transform 1.2s ease-in-out;
}
.cont.s--signup .sub-cont {
  transform: translate3d(-640px, 0, 0);
}

button,#temp1 {
  display: block;
  margin: 0 auto;
  width: 260px;
  height: 36px;
  border-radius: 30px;
  color: #fff;
  font-size: 15px;
  cursor: pointer;
}

.img {
  overflow: hidden;
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 260px;
  height: 100%;
  padding-top: 360px;
}
.img:before {
  content: "";
  position: absolute;
  right: 0;
  top: 0;
  width: 900px;
  height: 100%;
  background-image: url("https://s3-us-west-2.amazonaws.com/s.cdpn.io/142996/sections-3.jpg");
  background-size: cover;
  transition: transform 1.2s ease-in-out;
}
.img:after {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
}
.cont.s--signup .img:before {
  transform: translate3d(640px, 0, 0);
}
.img__text {
  z-index: 2;
  position: absolute;
  left: 0;
  top: 50px;
  width: 100%;
  padding: 0 20px;
  text-align: center;
  color: #fff;
  transition: transform 1.2s ease-in-out;
}
.img__text h2 {
  margin-bottom: 10px;
  font-weight: normal;
}
.img__text p {
  font-size: 14px;
  line-height: 1.5;
}
.cont.s--signup .img__text.m--up {
  transform: translateX(520px);
}
.img__text.m--in {
  transform: translateX(-520px);
}
.cont.s--signup .img__text.m--in {
  transform: translateX(0);
}
.img__btn {
  overflow: hidden;
  z-index: 2;
  position: relative;
  width: 100px;
  height: 36px;
  margin: 0 auto;
  background: transparent;
  color: #fff;
  text-transform: uppercase;
  font-size: 15px;
  cursor: pointer;
}
.img__btn:after {
  content: "";
  z-index: 2;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  border: 2px solid #fff;
  border-radius: 30px;
}
.img__btn span {
  position: absolute;
  left: 0;
  top: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  transition: transform 1.2s;
}
.img__btn span.m--in {
  transform: translateY(-72px);
}
.cont.s--signup .img__btn span.m--in {
  transform: translateY(0);
}
.cont.s--signup .img__btn span.m--up {
  transform: translateY(72px);
}

h2 {
  width: 100%;
  font-size: 26px;
  text-align: center;
}

label {
  display: block;
  width: 260px;
  margin: 25px auto 0;
  text-align: center;
}
label span {
  font-size: 20px;
  color: #000000	;
  text-transform: uppercase;
}

input {
  color: #000000	;
  display: block;
  width: 100%;
  margin-top: 5px;
  padding-bottom: 5px;
  font-size: 16px;
  border-bottom: 1px solid rgba(0, 0, 0, 0.4);
  text-align: center;
}

.forgot-pass {
  margin-top: 15px;
  text-align: center;
  font-size: 16px;
  color: black;
}

.submit {
  margin-top: 40px;
  margin-bottom: 20px;
  background: #d4af7a;
  text-transform: uppercase;
}

.fb-btn {
  border: 2px solid #d3dae9;
  color: #8fa1c7;
}
.fb-btn span {
  font-weight: bold;
  color: #455a81;
}

.sign-in {
  transition-timing-function: ease-out;
}
.cont.s--signup .sign-in {
  transition-timing-function: ease-in-out;
  transition-duration: 1.2s;
  transform: translate3d(640px, 0, 0);
}

.sign-up {
  transform: translate3d(-900px, 0, 0);
}
.cont.s--signup .sign-up {
  transform: translate3d(0, 0, 0);
}
.icon-link {
  position: absolute;
  left: 5px;
  bottom: 5px;
  width: 32px;
}
.icon-link img {
  width: 100%;
  vertical-align: top;
}
.icon-link--twitter {
  left: auto;
  right: 5px;
}
a:hover
{
color:black;
background-color:white;
}


  </style>
    
</head>
<body>
<!-- partial:index.partial.html -->
<div style="background-color:black;">
<div class="clear-toggle"></div>
							<div id="main-menu" class="collapse scroll navbar-right">
								<ul class="nav">
                                
									<li> <a href="home">Home</a> </li>
									
									<!-- <li> <a href="#about">About</a> </li> -->
                                    
                                   
								    <li  class="active"> <a href="addstudent">Job Seeker</a> </li>
																		
									<li> <a href="addrecruiter">Recruiter</a></li>
                                    
                                     
									<li> <a href="addadmin">Admin</a> </li>
										
								</ul>
							</div><!-- end main-menu -->
							</div>
<p class="tip">RECRUITEDIA</p>
<div class="cont">
  <form:form method="post" action="/submitstdlogindata" modelAttribute="std">
  <div class="form sign-in">
    <h2>Welcome back, Sign in</h2>
    <label>
      <span>Email</span>
      <form:input path="email" />
    </label>
    <label>
      <span>Password</span>
      <form:input type="password" path="password" />
    </label>
    <p class="forgot-pass">Forgot password?</p>
    <br>
    <input style="color:red;" id="temp1" type="submit" value="Sign-In">
    <br>
    <!-- <button type="button" class="fb-btn">Connect with <span>facebook</span></button> -->
  </div>
  </form:form>
  <div class="sub-cont">
    <div class="img">
      <div class="img__text m--up">
        <!-- <h2>New here?</h2>
        <p>Sign up and discover great amount of new opportunities!</p> -->
      </div>
      <div class="img__text m--in">
        <!-- <h2>One of us?</h2>
        <p>If you already has an account, just sign in. We've missed you!</p> -->
      </div>
      <div class="img__btn">
        <span class="m--up">Sign Up</span>
        <span class="m--in">Sign In</span>
      </div>
    </div>
    
  <form:form method="post" action="/submitstddata" modelAttribute="std">  
    
    <div class="form sign-up">
      <h2>Registration</h2>
      <%-- <label>
        <span>ID</span>
        <form:input path="id" />
      </label> --%>
      <label>
        <span>Name</span>
        <form:input path="name" required="required"/>
      </label>
      <!-- <label>
        <span>Name</span>
        <input type="text" />
      </label> -->
      <label>
        <span>GENDER</span><br>
		<form:select path="gender" class="selectpicker" required="required">
  <option value="Male"><span>MALE</span></option>
  <option value="Female"><span>FEMALE</span></option>
  <option value="others"><span>OTHERS</span></option>
		</form:select>
      
      </label>
      <label>
        <span>Organization</span>
        <form:input path="organization" required="required" />
      </label>
      <label>
        <span>Email</span>
        <form:input path="email" />
      </label>
      <label>
        <span>Password</span>
        <form:input type="password" path="password" required="required" />
      </label>
      <br>
      <input style="color:red;" id="temp1" type="submit" value="Sign-Up">
      <br>
      <!-- <button type="button" class="fb-btn">Join with <span>facebook</span></button> -->
    </div>
    </form:form>
  </div>

    
</div>

  <script>
  document.querySelector('.img__btn').addEventListener('click', function() {
	  document.querySelector('.cont').classList.toggle('s--signup');
	});
  </script>

</body>
</html>