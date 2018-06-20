package com;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class ServletRun extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       String sex=req.getParameter("sex");

        req.setAttribute("choose", "Выберите, какую таблицу выводить:");
        req.setAttribute("mainTable", "Таблица всех студентов:");
        req.setAttribute("table", "Таблица студентов только sex=");

        req.getRequestDispatcher("task2WithServlet.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //super.doPost(req, resp);
        String sex=req.getParameter("sex");

        req.setAttribute("choose", "Выберите, какую таблицу выводить:");
        req.setAttribute("mainTable", "Таблица всех студентов:");
        req.setAttribute("table", "Таблица студентов только sex=");

        req.getRequestDispatcher("task2WithServlet.jsp").forward(req, resp);
    }
}