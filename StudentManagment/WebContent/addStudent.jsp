<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="allCss.jsp" %>

</head>
<body style="background-color:#f0f2f2;">
    <%@include file="navbar.jsp" %>
      
      <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">Add Student</h4>               
                            <c:if test="${not empty succMsg }">
                                  <p class="text-center text-success">${succMsg }</p>
                                  <c:remove var="succMsg" scope="session"/>
                            </c:if>                            
                            <c:if test="${not empty failedMsg }">
                                  <p class="text-center text-danger">${failedMsg }</p>
                                  <c:remove var="failedMsg" scope="session"/>
                            </c:if>                    
                            <form action="./add_Student" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="exampleInputPassword1">Student Name*</label>
    <input type="text" class="form-control" required name="name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">DOB</label>
    <input type="text" class="form-control" required name="dob">
  </div> 
  <div class="form-group">
    <label for="exampleInputPassword1">Address</label>
    <input type="text" class="form-control" required name="address">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Qualification</label>
    <input type="text" class="form-control" required name="qualification">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="text" class="form-control" required name="email">
  </div>
  
  
 
  <button type="submit" class="btn btn-primary">Add</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
      </div>
      <div style="margin-top:5px;">
           <%@include file="footer.jsp" %>
          </div>
</body>
</html>