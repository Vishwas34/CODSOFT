<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<div class="container-fluid" style="height:10px; background-color:#303f9f"></div>
<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fas fa-book"></i> Student Management</h3>
            
        </div>
        <div class="col-md-6">
             </div>       
           
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
  <a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>     
      <li class="nav-item active">
        <a class="nav-link" href="ShowAllStudents.jsp"><i class="fas fa-book-open"></i>All Students</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addStudent.jsp"><i class="fas fa-plus-square"></i>Add Student</a>
      </li>          
     
    </ul>
    <form class="form-inline my-2 my-lg-0">      
      <!--<a href="setting.jsp" class="btn btn-light my-2 my-sm-0" type="submit"><i class="fas fa-cog"></i> Setting</a>-->
       <button class="btn btn-light my-2 my-sm-0 ml-1"  type="submit"><i class="fas fa-phone-square-alt"></i> Contact Us</button>
    </form>
  </div>
</nav>