<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
</head>
<body>
  <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Log In</a></li>
		<li class="tab"><a href="#signup">Sign Up</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="login">   
           <h1>Welcome Back!</h1>
           <form action="${contextPath}/login" method="post">
           
            <div class="field-wrap">
               <label>User Name<span class="req">*</span></label>
               <input type="text" name="userName"/>
            </div>
          
            <div class="field-wrap">
              <label>Password<span class="req">*</span></label>
              <input type="password" name="password"/>
            </div>
          
            <p class="forgot"><a href="#">Forgot Password?</a></p>
          
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button class="button button-block" type="submit">LogIn</button>
            
          </form>

         </div>
		
		 <div id="signup"> 
		   
          <h1>Sign Up for Free</h1>
          
          <form:form action="/dummy/registration" method="post" modelAttribute="user">
          
              <div class="field-wrap">
                 <label>Name<span class="req">*</span></label>
                 <input type="text" name="name" required autocomplete="off" />
              </div>
      

              <div class="field-wrap">
                <label>User Name<span class="req">*</span></label>
                <input type="text" name="userName" required autocomplete="off"/>
              </div>
          
              <div class="field-wrap">
                <label>Set A Password<span class="req">*</span></label>
                <input type="password" name="password" required autocomplete="off"/>
              </div>
              
              <div class="field-wrap">
                <label>Confirm Password<span class="req">*</span></label>
                <input type="password" name="confirmPassword" required autocomplete="off"/>
              </div>
          
              <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
              <button type="submit" class="button button-block">Get Started</button>
             
           </form:form>
           
         </div>
         
       </div><!-- tab-content -->
       
      </div> <!-- /form -->
     <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
     <script src="${contextPath}/resources/js/app.js"></script>
     
  </body>
</html>
 
 
 --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">
   <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in with your account</title>

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    </head>
    <body>
	  <div class="container">
		 <form method="post" action="${contextPath}/login" class="form-signin">
			<h2 class="form-heading">Log in</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				 <span>${message}</span> 
				 <input name="userName" type="text" class="form-control" placeholder="Username" autofocus="autofocus" /> 
				 <input name="password" type="password" class="form-control" placeholder="Password" /> 
				 <span>${error}</span> 
				 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				 <button class="btn btn-lg btn-primary btn-block" type="submit">LogIn</button>
				 <h4 class="text-center">
					<a href="${contextPath}/registration">Create an account</a>
				 </h4>
			</div>
		  </form>
	  </div>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
      <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
     </body>
</html>