<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021-07-01
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form>
        <table border="1" width="60%">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Birthday</td>
                <td>Sex</td>
                <td>Address</td>
            </tr>
            <c:forEach var="list" items="${list}">
                <tr>
                    <td>${list.id}</td>
                    <td>${list.name}</td>
                    <td>${list.birthday}</td>
                    <td>${list.sex}</td>
                    <td>${list.address}</td>
                </tr>
            </c:forEach>
        </table>
        <table>
            <tr>
                <td>当前页${info.pageNum}   总共:${info.pageSize}页  总共:${info.total}数据</td>
                <a href="${pageContext.request.contextPath}/user/query?pageNum=1">首页</a>
                <a href="${pageContext.request.contextPath}/user/query?pageNum=${info.pageNum-1}">上一页</a>
                <a href="${pageContext.request.contextPath}/user/query?pageNum=${info.pageNum+1}">下一页</a>
                <a href="${pageContext.request.contextPath}/user/query?pageNum=${info.pageSize}">末页</a>
            </tr>
        </table>
    </form>
</body>
</html>
