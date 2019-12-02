<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="../jsp/head.jsp" />
        <style>
            <%@include file="../style/style.css"%>
        </style>
    </head>
    <body>
        <jsp:include page="../jsp/header.jsp" />
        <div id="container" class="full-height">
            <div class="d-flex justify-content-center align-items-center " style="height:500px">
                <a href="${pageContext.request.contextPath}/trainer/show_trainers.htm" class="about-btn  mt-5">Our Trainers</a>
            </div>
        </div>
    </body>
</html>
