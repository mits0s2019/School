
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
    
    <body >      
        <jsp:include page="../jsp/header.jsp" />
        
        <div id="container" class="full-height pt-5">
            <c:if test="${trainers.size()>0}">
                <div class="container">
                    <a  href="${pageContext.request.contextPath}/trainer/form.htm" class="btn btn-info btn-lg float-left" >
                        <span class="fa fa-plus"></span> Add
                    </a>
                    <table class="table table-bordered table-hover text-center " >
                        <thead class="table-dark no-hover ">
                            <tr>
                                <th>#</th> 
                                <th>first name</th>
                                <th>last name</th>                           
                                <th>subject</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="count" value="0" scope="page" />
                            <c:forEach items="${trainers}" var="tr"  >
                                <c:set var="count" value="${count + 1}" scope="page"/>
                                <tr >
                                    <td>${count}</td>
                                    <td>${tr.firstName}</td>
                                    <td>${tr.lastName}</td>                           
                                    <td>${tr.trSubject} </td>
                                    <td class="p-0"><a href="${pageContext.request.contextPath}/trainer/update1/${tr.trId}.htm" class="btn pl-4 pr-4"><i class="fa fa-download"></i> Update</a> </td>
                                    <td class="p-0"><a href="${pageContext.request.contextPath}/trainer/delete/${tr.trId}.htm" onclick="return confirm('Are you sure you want to delete?')" id="delete" class="btn pl-4 pr-4"><i class="fa fa-close"></i> Delete</a></td>
                                </tr>
                            </c:forEach>
                        </tbody> 
                    </table>
                </div>
            </c:if>
        </div>
    </body>
</html>
