package com.liang.service;

import com.liang.pojo.Books;

import java.util.List;

/**
 * @description:
 * @author:Lenovo
 * @date:2020-10-31 2020/10/31
 */
public interface BookService {
    //增加一本书
    public int addBook(Books books);

    //删除一本书
    public int deleteBook(int id);
    //更新一本书
    public int updateBook(Books books);

    //查询一本书
    public Books queryBookById(int id);
    //查询全部的书
    public List<Books> queryAllBook();
}
