package com.t2010a.t2010a_again.controller;

import com.t2010a.t2010a_again.entity.Customer;
import com.t2010a.t2010a_again.model.CustomerModel;
import com.t2010a.t2010a_again.model.MySqlCustomerModel;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RecentViewCustomerServlet extends HttpServlet {
    private CustomerModel customerModel;
    public  RecentViewCustomerServlet(){
        this.customerModel = new MySqlCustomerModel();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        List<Customer> list = (ArrayList<Customer>) session.getAttribute("recentView");
        if (list == null){
            list = new ArrayList<>();
        }
        req.setAttribute("title","RecentView");
        req.setAttribute("listStudent",list);
        req.getRequestDispatcher("/admin/customers/recentView.jsp").forward(req,resp);
    }
}
