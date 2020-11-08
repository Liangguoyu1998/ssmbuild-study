<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/10/31
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addBook</title>
</head>
<body>
    <form action="/book/addBook" method="post">
        书籍名称：<input type="text" placeholder="请输入书籍名称" name="bookName" required><br/>
        书籍数量：<input type="text" placeholder="请输入书籍数量" name="bookCounts" required><br/>
        书籍描述：<input type="text" placeholder="请输入书籍描述" name="detail" required><br/>
        <input type="submit" value="添加书籍"/>
    </form>
</body>
</html>
