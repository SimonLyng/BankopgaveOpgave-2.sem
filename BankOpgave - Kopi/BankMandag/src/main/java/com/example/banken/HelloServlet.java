package com.example.banken;

import DomæneObjekter.Konto;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet
{

    Map<String , Konto> kontis = new HashMap<>();

    public void init()
    {

        Konto konto = new Konto("nicolai","1", 150);
        Konto konto1 = new Konto("denis","1", 15);
        Konto konto2 = new Konto("Betyl","1", 170);
        Konto konto3 = new Konto("long","1", 15);
        Konto konto4 = new Konto("Kristoffer","1", 1500);
        Konto konto5 = new Konto("søren","1", 2157);

        kontis.put(konto.getNavn(), konto);
        kontis.put(konto1.getNavn(), konto1);
        kontis.put(konto2.getNavn(), konto2);
        kontis.put(konto3.getNavn(), konto3);
        kontis.put(konto4.getNavn(), konto4);
        kontis.put(konto5.getNavn(), konto5);

    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        ServletContext servletContext = getServletContext();

        servletContext.setAttribute("kontis", kontis);

        String msg = "her er en oversigt over kontisne";

        request.setAttribute("msg",msg);

        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    public void destroy()
    {
    }
}