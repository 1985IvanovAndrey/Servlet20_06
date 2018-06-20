<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.GetStudents" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <% GetStudents getStudents=new GetStudents();
      ArrayList<Student>students=getStudents.getStudentsList();
        pageContext.setAttribute("students", students);
    %>

</head>
<body>
<h2> ${mainTable}</h2>
<br>
<table border="4" cellspacing="5" cellpadding="5">
    <tr align="center" c>
        <td><font color="#FF0000">name</font></td>
        <td><font color="#FF0000">sec_name</font></td>
        <td><font color="#FF0000">sex</font></td>
        <td><font color="#FF0000">phone</font></td>
    </tr>
    <c:forEach var="student" items="${students}">
    <tr>
        <td>${student.name}</td>
        <td>${student.secName}</td>
        <td>${student.sex}</td>
        <td>${student.phone}</td>
        </c:forEach>
    </tr>
</table>

<h2> ${choose}</h2>
<br>
<form action="ServletRun">
    <input type="radio" name="sex" value="MAN"> MAN
    <input type="radio" name="sex" value="WOMAN"> WOMAN
    <input type="submit" value="Submit"/></form>

<br>
<c:if test="${param.sex!=null}">
<h2>Таблица студентов только sex=${param.sex}:</h2>
<table border="4" cellspacing="5" cellpadding="5">
    <tr align="center">
        <td><font color="#FF0000">name</font></td>
        <td><font color="#FF0000">sec_name</font></td>
        <td><font color="#FF0000">sex</font></td>
        <td><font color="#FF0000">phone</font></td>
    </tr>
    </c:if>
    <c:forEach var="student" items="${students}">
        <c:if test="${student.sex.equals(param.sex)}">
            <tr>
                <td>${student.name}</td>
                <td>${student.secName}</td>
                <td>${student.sex}</td>
                <td>${student.phone}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>

</body>
</html>
