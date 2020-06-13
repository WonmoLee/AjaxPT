package com.test.sat0613.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.sat0613.action.Action;
import com.test.sat0613.action.Mvc01Action;
import com.test.sat0613.action.Mvc02Action;
import com.test.sat0613.action.Mvc03Action;
import com.test.sat0613.action.Mvc04Action;
import com.test.sat0613.action.Mvc05Action;

/**
 * Servlet implementation class TestController
 */
@WebServlet("/test")
public class TestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TestController() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cmd = request.getParameter("cmd");
		Action action = router(cmd);
		action.execute(request, response);
	}
	
	public Action router(String cmd) {
		if(cmd.equals("mvc01")) {
			return new Mvc01Action();
		} else if(cmd.equals("mvc02")) {
			return new Mvc02Action();
		} else if(cmd.equals("mvc03")) {
			return new Mvc03Action();
		} else if(cmd.equals("mvc04")) {
			return new Mvc04Action();
		} else if(cmd.equals("mvc05")) {
			return new Mvc05Action();
		}
		
		return null;
	}
	
}
