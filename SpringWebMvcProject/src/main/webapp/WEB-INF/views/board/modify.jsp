<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<jsp:include page="../include/static-head.jsp" />
</head>

<body class="hold-transition skin-blue sidebar-mini layout-boxed">

<div class="wrapper">

    <!-- Main Header -->
    <jsp:include page="../include/header.jsp" />

    <!-- Left side column. contains the logo and sidebar -->
    <jsp:include page="../include/side-bar.jsp" />

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Board
                <small>Modification page</small>
            </h1>
            <ol class="breadcrumb">
                <li><i class="fa fa-edit"></i> article</li>
                <li class="active"><a href="<c:url value='/board/write'/>"> modify</a></li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <div class="col-lg-12">
                <form role="form" id="writeForm" method="post" action="<c:url value='/board/modify'/>">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Post Change</h3>
                        </div>
                        <div class="box-body">
                            <input type="hidden" name="boardNo" value="${article.boardNo}">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input class="form-control" id="title" name="title" placeholder="Please enter a title" value="${article.title}">
                            </div>
                            <div class="form-group">
                                <label for="content">Content</label>
                                <textarea class="form-control" id="content" name="content" rows="30"
                                          placeholder="Please enter a content" style="resize: none;">${article.content}</textarea>
                            </div>
                            <div class="form-group">
                                <label for="writer">Writer</label>
                                <input class="form-control" id="writer" name="writer" value="${article.writer}" readonly>
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="button" class="btn btn-primary"><i class="fa fa-list"></i>List</button>
                            <div class="pull-right">
                                <button type="button" class="btn btn-warning cancelBtn"><i class="fa fa-trash"></i>Cancle</button>
                                <button type="submit" class="btn btn-success modBtn"><i class="fa fa-save"></i>Save</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <jsp:include page="../include/footer.jsp" />

</div>
<!-- ./wrapper -->
<jsp:include page="../include/plugin-js.jsp" />


</body>
</html>