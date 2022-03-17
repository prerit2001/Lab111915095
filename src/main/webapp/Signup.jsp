<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
@charset "ISO-8859-1";
 * {
	 box-sizing: border-box;
}
 body {
	 color: #31507d;
	 display: flex;
	 font-family: 'Poppins', sans-serif;
	 height: 100vh;
	 align-items: center;
	 justify-content: center;
}
 form {
	 background-color: #fff;
	 border-radius: 8px;
	 padding: 20px 35px 35px 35px;
	 text-align: center;
	 width: 500px;
}
 form i {
	 color: #fff;
	 font-size: 30px;
	 transition: color 250ms ease-in;
}
 form .input-wrapper {
	 margin-bottom: 20px;
	 position: relative;
}
 form .input-wrapper i {
	 color: #a4a9b6;
	 position: absolute;
	 opacity: 0.85;
	 right: 13px;
	 top: 50%;
	 transform: translateY(-50%);
}
 form h1 {
	 font-weight: 600;
	 letter-spacing: 0;
	 margin: 25px 0 0 0;
}
 form p {
	 color: #a4a9b6;
	 font-size: 18px;
	 margin: 2px 0 44px 0;
}
 form input[type=text], form input[type=password] {
	 border: 1px solid #d8ddf0;
	 border-radius: 6px;
	 font-size: 15px;
	 padding: 13px 9px 13px 9px;
	 transition: border-color 250ms ease-in;
}
 form input[type=text]:focus, form input[type=password]:focus {
	 border-color: #4c70ff;
	 outline: none;
}
 form input[type=text]:focus + i, form input[type=password]:focus + i {
	 color: #4c70ff;
}
 form input {
	 width: 100%;
}
 form ::placeholder {
	 color: #a4a9b6;
	 font-size: 15px;
	 opacity: 1;
}
 form button[type=submit] {
	 background: #4c70ff;
	 border: none;
	 border-radius: 6px;
	 color: #fff;
	 cursor: pointer;
	 display: flex;
	 align-items: center;
	 justify-content: center;
	 font-size: 16px;
	 padding: 18px 10px;
	 width: 70%;
	 margin-left: 15%;
}
 form button[type=submit] i {
	 margin-left: 5px;
}
 
</style>
</head>
<body>
	<form action="Register" method="post">
  <h1>Sign-Up </h1>
  <p>Enter your credentials to continue.</p>
  
  <div class="input-wrapper">
    <input type="text" placeholder="Enter your Id Number" required name="uname"/>
    <i class="bx bxs-user-circle"></i>
  </div>

  <div class="input-wrapper">
    <input type="password" placeholder="Enter your Password"  required name="pass"/>
    <i class="bx bx-key"></i>
  </div>
  
     <div class="input-wrapper">
    <input type="text" placeholder="Enter your First Name"  required name="name1"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  <div class="input-wrapper">
    <input type="text" placeholder="Enter your Last Name"  required name="name2"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  
   <div class="input-wrapper">
    <input type="text" placeholder="Enter your DOB"  required name="dob"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  <div class="input-wrapper">
    <input type="text" placeholder="Enter your Contact Number"  required name="phone"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  
  <div class="input-wrapper">
    <input type="text" placeholder="Enter your Job Role"  required name="role"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  <div class="input-wrapper">
    <input type="text" placeholder="Enter your Monthly Salary"  required name="ms"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  <div class="input-wrapper">
    <input type="text" placeholder="Enter your Yearly Bonus"  required name="yb"/>
    <i class="bx bxs-user-circle"></i>
  </div>
  
  <div>
    <button type="submit">
     Register
    </button>
  </div>
  <a href = "Login.jsp">Already have account ? Login</a>
</form>
</body>
</html>