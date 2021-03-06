package net.heesu;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/helloworld")
@WebServlet(name="HelloWorld", urlPatterns={"/"})
public class HelloWorldServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("Request Success!");
		resp.getWriter().print("Hello World from Servlet");
	}
}
