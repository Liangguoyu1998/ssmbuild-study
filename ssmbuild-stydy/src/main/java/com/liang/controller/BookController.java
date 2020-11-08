package com.liang.controller;

import com.liang.pojo.Books;
import com.liang.service.BookService;
import com.liang.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

/**
 * @description:
 * @author:Lenovo
 * @date:2020-10-31 2020/10/31
 */
@Controller
@RequestMapping("/book")
public class BookController {
    //controller 掉service层
    @Autowired
    @Qualifier("bookService")
    private BookService bookService;

    //查询全部的书籍，并且返回到一个书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    //预添加书籍
    @RequestMapping("/preAddBook")
    public String preAddBook() {
        return "addBook";
    }

    //添加书籍
    @RequestMapping("/addBook")
    public String addBook(String bookName, int bookCounts, String detail) {
        Books book = new Books(0, bookName, bookCounts, detail);
        int i = bookService.addBook(book);
        if (i > 0) {
            System.out.println("添加书籍成功！");
        } else {
            System.out.println("添加书籍失败！");
        }
        return "redirect:/book/allBook";
    }

    //预更新书籍
    @RequestMapping("/preUpdateBook")
    public String preUpdateBook(int id, Model model) {
        Books book = bookService.queryBookById(id);
        model.addAttribute("book", book);
        return "updateBook";
    }

    //更新书籍
    @RequestMapping("updateBook")
    public String updateBook(Books book) {
        int i = bookService.updateBook(book);
        if (i > 0) {
            System.out.println("更新书籍成功！");
        } else {
            System.out.println("更新书籍失败！");
        }
        return "redirect:/book/allBook";
    }

    //删除书籍
    @RequestMapping("/deleteBook")
    public String deleteBook(int id) {
        int i = bookService.deleteBook(id);
        if (i > 0) {
            System.out.println("删除书籍成功！");
        } else {
            System.out.println("删除书籍失败！");
        }
        return "redirect:/book/allBook";
    }

    //根据id查询书籍
    @RequestMapping("/queryBookById")
    public String queryBookById(int id, Model model) {
        List<Books> list = new ArrayList<Books>();
        Books books = bookService.queryBookById(id);
        if(books == null){
            System.out.println("查询为空！");
            model.addAttribute("error","查询为空！！！");
            list = bookService.queryAllBook();
        }else {
            list.add(books);
        }
        model.addAttribute("list",list);
        return "allBook";
    }

}
