<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2020/10/31
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>updateBook</title>
</head>
<body>
<form action="/book/updateBook" method="post">
            <input type="text" name="bookID" placeholder="请输入书籍编号" value="${book.bookID}" hidden><br/>
    书籍名称:<input type="text" name="bookName" placeholder="请输入书籍名称" value="${book.bookName}" required><br/>
    书籍数量:<input type="text" name="bookCounts" placeholder="请输入书籍数量" value="${book.bookCounts}" required><br/>
    书籍描述:<input type="text" name="detail" placeholder="请输入书籍描述" value="${book.detail}" required><br/>
    <input type="submit" value="更新书籍"/>
</form>
</body>
</html>
