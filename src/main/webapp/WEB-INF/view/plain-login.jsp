<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h3>Login</h3>
<%--    <form:form action="${pageContext.request.contextPath}/authenticateTheUser">--%>
<%--        <!--Check Error-->--%>
<%--        <c:if test="${param.error != null}">--%>
<%--            <i>Soory enter worng credential</i>--%>
<%--        </c:if>--%>
<%--        <!--Logout -->--%>
<%--        <c:if test="${param.logout != null}">--%>
<%--            <i>You are Logged Out</i>--%>
<%--        </c:if>--%>
<%--        <p>User Name: <input type="text" name="username"></p>--%>
<%--        <p>Password: <input type="password" name="password"></p>--%>
<%--        <input type="submit" value="Login">--%>
<%--    </form:form>--%>
<!--Using manual CSRF for normal form tag-->
        <form action="${pageContext.request.contextPath}/authenticateTheUser">
            <!--Check Error-->
            <c:if test="${param.error != null}">
                <i>Soory enter worng credential</i>
            </c:if>
            <!--Logout -->
            <c:if test="${param.logout != null}">
                <i>You are Logged Out</i>
            </c:if>
            <p>User Name: <input type="text" name="username"></p>
            <p>Password: <input type="password" name="password"></p>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
            <input type="submit" value="Login">
            <!-- Manual adding tokens-->

        </form>
</body>
</html>
