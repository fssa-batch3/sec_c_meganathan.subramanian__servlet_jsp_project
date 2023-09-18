package com.fssa.bookstore.userservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.UserService;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession httpSession = request.getSession();
		String emailId = (String) httpSession.getAttribute("loggedInEmail"); 
		Logger.info(emailId);

		try {
			User userDetails = new UserService().loginUser(emailId);
			request.setAttribute("userDetails", userDetails);
			RequestDispatcher rd = request.getRequestDispatcher("/profilepage.jsp");
			rd.forward(request, response);
		} catch (IOException | ServiceException e) {
			Logger.info(e.getMessage());
		}

	}

}
