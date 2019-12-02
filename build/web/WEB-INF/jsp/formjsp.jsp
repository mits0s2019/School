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
        <div id="container" class="full-height pt-5">
            <div class="container register-form text-center pb-2 pl-0 pr-0 w-75" id="createform">
                <spring:form modelAttribute="trainer" action="${pageContext.request.contextPath}/trainer/registered.htm" method="POST" onsubmit="return validate1() ">
                    <div class="form">
                        <div class="note">
                            <h2 style="font-size: 40px">Trainer Registration</h2>
                        </div>
                        <div class="form-content">
                            <div class="row" id="formPare">
                                <div class="col-md-4">
                                    <spring:input path="firstName" placeholder="Your First name *" maxlength="20" required="required" /> 
                                </div>
                                <div class="col-md-4">
                                    <spring:input path="lastName" placeholder="Your Last name *" maxlength="20" required="required" />
                                </div>
                                <div class="col-md-4">       
                                    <spring:input path="trSubject" placeholder="Your Subject *" maxlength="20" required="required" />
                                </div>
                            </div>
                        </div>                       
                        <button type="submit" class="btnSubmit">Register</button>                  
                    </spring:form>
                </div>
            </div>
        </div>
    </div>
    <script >
        function validate1() {
            var body1 = document.getElementById("formPare");
            var tr = body1.children;
            
            for (let i = 0; i < tr.length; i++) {
                var field = tr[i].firstElementChild.value;
               
                if (!(/^([a-zA-Z]{3,})$/.test(field))) {
                    alert("Invalid Input...");
                    return false;
                }
            }
            alert("Successfully created");
            return true;
        }
    </script>
</body>
</html>
