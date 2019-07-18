<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <div class="user-panel">
           <c:if test="${empty login}">
                <div class="pull-left image">
                    <img src="<c:url value='/dist/img/user1-128x128.jpg'/>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Guest</p>
                    <a href="#"><i class="fa fa-circle text-danger"></i> OFFLINE</a>
                </div>
           </c:if>  
           <c:if test="${not empty login}">   
                <div class="pull-left image">
                    <img src="<c:url value='/dist/img/user1-128x128.jpg'/>" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${login.userName}</p>
                        <%-- Status --%>
                    <a href="#"><i class="fa fa-circle text-success"></i> ONLINE</a>
                </div>
           </c:if>     
            
        </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
              <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
              </button>
            </span>
        </div>
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">Menu</li>
        <!-- Optionally, you can add icons to the links -->
        <li class="active"><a href="<c:url value='/board/write'/>"><i class="fa fa-link"></i> <span>Post Write</span></a></li>
        <li><a href="<c:url value='/board/list/${1}'/>"><i class="fa fa-link"></i> <span>Board List</span></a></li>
       
        
      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>