<%@page import="com.admin.Student"%>
<%@page import="com.admin.DBConnect"%>
<%@page import="com.admin.StudentDAO"%>
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
                            <h4 class="text-center">Update Student</h4>               
                           <%
                             int id=Integer.parseInt(request.getParameter("id"));
                            StudentDAO dao=new StudentDAO(DBConnect.getConn());
                            Student b=dao.getStudentById(id);
                            %>                    
                            <form action="./editstudent" method="post">
                            <input  type="hidden" name="id" value="<%=b.getId()%>"/>
  <div class="form-group">
    <label for="exampleInputPassword1">Student Name*</label>
    <input type="text" class="form-control" required name="name" value="<%=b.getName() %>">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">DOB</label>
    <input type="text" class="form-control" required name="dob" value="<%=b.getDob() %>">
  </div> 
  <div class="form-group">
    <label for="exampleInputPassword1">Address</label>
    <input type="text" class="form-control" required name="address" value="<%=b.getAddress() %>">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Qualification</label>
    <input type="text" class="form-control" required name="qualification" value="<%=b.getQualifiaction() %>">
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Email</label>
    <input type="text" class="form-control" required name="email" value="<%=b.getEmail() %>">
  </div>
  
  
 
  <button type="submit" class="btn btn-primary">Update Student</button>
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