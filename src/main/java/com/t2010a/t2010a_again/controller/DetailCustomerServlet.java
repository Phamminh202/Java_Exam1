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
import java.lang.reflect.Array;
import java.util.ArrayList;

public class DetailCustomerServlet extends HttpServlet {
    private CustomerModel customerModel;

    public DetailCustomerServlet() {
        this.customerModel = new MySqlCustomerModel();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String rollNumber = req.getParameter("id");
        req.setAttribute("title", "Detail Customer");
        Customer customer = customerModel.findById(rollNumber);

        if (customer == null) {
            req.setAttribute("message", "Data not found!");
            req.getRequestDispatcher("/admin/error/404.jsp").forward(req, resp);
        } else {
            HttpSession session = req.getSession();
            ArrayList<Customer> recentView =
                    (ArrayList<Customer>) session.getAttribute("recentView");
            if (recentView == null){
                recentView = new ArrayList<Customer>();
            }
            boolean exists = false;
            for (int i = 0; i < recentView.size();i++){
                if (recentView.get(i).getId().equals(customer.getId()));{
                    exists = true;
                }
            }
            if (!exists){
                recentView.add(customer);
                session.setAttribute("recentView",recentView);
            }
            req.setAttribute("customer", customer);
            req.getRequestDispatcher("/admin/customers/detail.jsp").forward(req, resp);
        }
    }
}
