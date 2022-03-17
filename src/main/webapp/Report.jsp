<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>

<style>

*{
    box-sizing: border-box;
    margin: 0;
    font-family: 'Courier New', Courier, monospace;
}
body{
    background-color: rgb(182, 182, 233);
}
.card{
    width: 550px;
    height: 500px;
    margin-top: 100px;
    border-radius: 16px;
    margin-left: auto;
    margin-right: auto;
    border: 5px solid rgb(233, 237, 240);
    background-color: rgb(234, 241, 247);
    color: rgb(51, 48, 48);
    text-align: center;
}
.img-name{
    width: 100%;
    height: 210px;
    
    margin-left: auto;
    margin-right: auto;
    margin-top: -75px;
    
    border-bottom: 5px solid rgb(182, 182, 233);
}
.img-name img{
    display: block;
    width: 140px;
    height: 140px;
    margin-left: auto;
    margin-right: auto;
    border-radius: 70px;
    border: 5px solid rgb(202, 202, 233);
    background-color: rgb(234, 241, 247);
}
.img-name h2{
    text-align: center;
    padding: 16px;
}
.followers{
    height: 140px;
    padding-top: 50px;
   
}
.followers h3{
    text-align: center;
}
.button-follow{
    height: 115px;
}
.button-follow  button{
    display: block;
    width: 200px;
    margin-left: auto;
    margin-right: auto;
    padding: 16px;
    background-color: rgb(182, 182, 233);
     border-radius: 10px;
     font-size: 18px;
}
.button-follow button:hover{
    background-color: rgb(180, 180, 226);
}

form{
	margin-top: 50px;
	text-align: center;
}

button{
	color: red;
}

</style>
</head>
<body>	
		<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");   
		response.setHeader("Progma","no-cache");    
		response.setHeader("Expires","0");
			if(session.getAttribute("emp_id") == null){
				response.sendRedirect("Login.jsp");
			}
		%>
        <div class="card">
            <div class="img-name">
            	<br/><br/><br/><br/><br/><br /> <br />
                <h2>Name: ${fname} ${sname}</h2>
            </div>
            <div class="followers">
                <h3>Employee_Id -  ${emp_id}</h3>
                <h3>Date of Birth -  ${dob}</h3>
                <h3>Contact Number - ${phone}</h3>
               
            </div>
            
            <div class="followers">
                <h1> Salary Details </h1>
                <br />
                <h3>Job Role -  ${role}</h3>
                <h3>Monthly Salary -  ${ms}</h3>
                <h3>Yearly Bonus - ${yb}</h3>
                <h4>Total Salary - ${ts} </h4>
               
            </div>
            
        </div>
   
	
</body>
