<%@page import="com.admin.Student"%>
<%@page import="java.util.List"%>
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
<title>Admin: All Books</title>
<%@include file="allCss.jsp" %>
</head>
<body>
             <%@include file="navbar.jsp" %>
<h3 class="text-center">Hello Admin</h3>
                            <c:if test="${not empty succMsg }">
                                  <p class="text-center text-success">${succMsg }</p>
                                  <c:remove var="succMsg" scope="session"/>
                            </c:if>                      
                            <c:if test="${not empty failedMsg }">
                                  <p class="text-center text-danger">${failedMsg }</p>
                                  <c:remove var="failedMsg" scope="session"/>
                            </c:if>
    <table class="table table-striped">
  <thead class="bg-dark text-white">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">DOB</th>
      <th scope="col">Address</th>
      <th scope="col">Qualification</th>
      <th scope="col">Email</th>
      
      <th scope="col">Action</th>
    </tr>
  </thead>    
  <tbody> 
    <%
       StudentDAO dao=new StudentDAO(DBConnect.getConn());
      List<Student> list=dao.getAllStudent();
      for(Student b:list)
      {%>
       <tr>
      <td><%=b.getId() %></td>
      <td><%=b.getName()%></td>
      <td><%=b.getDob() %></td>
      <td><%=b.getAddress() %></td>
      <td><%=b.getQualifiaction() %></td>
      <td><%=b.getEmail() %></td>
      <td>
      <a href="edit_student.jsp?id=<%=b.getId() %>" class="btn btn-sm btn-primary"><i class="fas fa-edit"></i>Edit</a>
      <a href="./delete?id=<%=b.getId()%>" class="btn btn-sm btn-danger"><i class="fas fa-trash-alt"></i>Delete</a>
      </td>
    </tr>	  
      <%}
      %>  
  </tbody>
</table>
    <div style="margin-top:295px;">
           <%@include file="footer.jsp" %>
          </div>
</body>
</html>