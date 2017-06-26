<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
          
          <form:form action="/registration" method="post" modelAttribute="user">
          
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
          
              <button type="submit" class="button button-block">Get Started</button>
             
           </form:form>
           
         </div>
         
       </div><!-- tab-content -->
       
      </div> <!-- /form -->
     <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
     <script src="${contextPath}/resources/js/app.js"></script>
     
  </body>
</html>
 
 
