<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Maksim
  Date: 24.12.2022
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AllEmployees</title>
  </head>
<body>
<h2>All Employees</h2>
<br>
<table>

    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>


    <c:forEach var="value" items="${listEmployees}">

        <c:url var="deleteButton" value="//deleteEmployee">
            <c:param name="empId" value="${value.id}"/>
        </c:url>

        <c:url var="updateButton" value="//updateInfo">

            <c:param name="empId" value="${value.id}"/>

        </c:url>

        <tr>
            <td>${value.name}</td>
            <td>${value.surName}</td>
            <td>${value.department}</td>
            <td>${value.salary}</td>
            <td>
                <input type="button" value="Update" onclick="window.location.href = '${updateButton}' "/>
                <input type="button" value="Delete" onclick="window.location.href = '${deleteButton}' "/>
            </td>
        </tr>
    </c:forEach>

</table>
<br>
<input type="button" value="Add"
       onclick="window.location.href= 'addNewEmployee'"/>

</body>
</html>