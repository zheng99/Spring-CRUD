<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--main_header.jsp--%>
<!-- Main Header -->
  <header class="main-header">

    <%-- Logo --%>
    <a href="/" class="logo">
        <%-- mini logo for sidebar mini 50x50 pixels --%>
        <span class="logo-mini"><b>M</b>B</span>
        <%-- logo for regular state and mobile devices --%>
        <span class="logo-lg"><b>MVC</b> Board</span>
    </a>

    <%-- Header Navbar --%>
    <nav class="navbar navbar-static-top" role="navigation">
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <c:if test="${not empty login}">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">                            
                            <span class="hidden-xs">${login.userName}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                
                                <p>${login.userName}
                                    <small>
                                        Registration date : <fmt:formatDate value="${login.userRegDate}" pattern="yyyy-MM-dd"/>
                                    </small>
                                </p>
                            </li>
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Post</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Recommended Post</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">BookMark</a>
                                    </div>
                                </div>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat"><i
                                            class="fa fa-info-circle"></i><b>My Page</b></a>
                                </div>
                                <div class="pull-right">
                                    <a href="<c:url value='/user/logout'/>" class="btn btn-default btn-flat"><i
                                            class="glyphicon glyphicon-log-out"></i><b> Logout</b></a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${empty login}">
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            
                            <span class="hidden-xs">Please sign up or Login</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="user-header">
                                
                                <p>
                                    <b>Please sign up or Login</b>
                                    <small></small>
                                </p>
                            </li>
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="<c:url value='/user/join'/>" class="btn btn-default btn-flat"><i
                                            class="fa fa-user-plus"></i><b> Sign</b></a>
                                </div>
                                <div class="pull-right">
                                    <a href="<c:url value='/user/login'/>" class="btn btn-default btn-flat"><i
                                            class="glyphicon glyphicon-log-in"></i><b> Login</b></a>
                                </div>
                            </li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </div>
    </nav>
</header>