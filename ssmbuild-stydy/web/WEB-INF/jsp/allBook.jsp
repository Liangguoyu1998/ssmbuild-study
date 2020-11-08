<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/10/31
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍展示</title>
    <style>
        h1 {
            width: 200px;
            height: 50px;
            border: 1px solid black;
            background: palegreen;
            line-height: 50px;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
    <h1>书籍展示页面</h1>
    <div>
        <a href="/book/preAddBook">添加书籍</a>
        <form action="/book/queryBookById" method="post">
            <span style="color: red;font-weight: bold">${error}</span>
            <input type="text" name="id" placeholder="请输入书籍编号进行查找" required>
            <input type="submit" value="查询">
        </form>
    </div>
    <table border="1px">
        <tr>
            <th>书籍编号</th>
            <th>书籍名称</th>
            <th>书籍数量</th>
            <th>书籍描述</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${list}" var="item">
            <tr>
                <td>${item.bookID}</td>
                <td>${item.bookName}</td>
                <td>${item.bookCounts}</td>
                <td>${item.detail}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/book/preUpdateBook?id=${item.bookID}">更新</a>&nbsp;|
                    <a href="${pageContext.request.contextPath}/book/deleteBook?id=${item.bookID}">删除</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
