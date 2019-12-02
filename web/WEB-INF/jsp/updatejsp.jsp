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

        <div id="container" class="full-height ">
            <div class="container-fluid w-75 float-center pt-5 tableFixHead text-center"  >
                <table class="table table-bordered table-hover" >
                    <thead class="table-dark no-hover ">
                        <tr>
                            <th>first name</th>
                            <th>last name</th>                           
                            <th>subject</th>
                        </tr>
                    </thead>
                    <tbody id="tbody1">
                        <spring:form modelAttribute="trainer" action="${pageContext.request.contextPath}/trainer/update2.htm" method="POST" onsubmit="return validate()">
                            <tr>
                                <spring:hidden path="trId" /> 
                                <td><spring:input path="firstName" maxlength="20" required="required"/></td>
                                <td><spring:input path="lastName" maxlength="20" required="required"/></td>
                                <td><spring:input path="trSubject" maxlength="20" required="required"/></td>
                            </tr>
                        </tbody>
                    </table>
                    <button id="upbutton"  type="submit" class="btnSubmit">Update</button>   
                </spring:form>
            </div>
        </div>

        <script >
            function validate() {
                var body1 = document.getElementById("tbody1");
                var tr = body1.children;
                var td = tr[1].children;
                for (let i = 1; i < td.length; i++) {
                    var field1 = td[i].firstElementChild.value;
                    if (!(/^([a-zA-Z]{3,})$/.test(field1))) {
                        alert("Invalid Input...");
                        return false;
                    }
                }
                alert("Successfully updated");
                return true;
            }
        </script>
    </body>
</html>
