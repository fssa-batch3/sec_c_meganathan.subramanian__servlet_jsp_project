package com.fssa.bookstore.userservlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.dao.UserDao;
import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserService userService = new UserService();
		try {
			userService.loginUser(email, password); 
			response.sendRedirect(request.getContextPath()+"/Index");
		}
		catch(IOException|DAOException|SQLException | ServiceException e) {
			String errorMessage  = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

}
