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
import com.fssa.bookstore.logger.Logger;

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
		
		UserDao userDao = new UserDao();
		try {
			userDao.userLogin(email, password); {
			response.sendRedirect(request.getContextPath()+"/home.jsp");
			}
			
			
		}
		catch(IOException|DAOException|SQLException e) {
			e.printStackTrace();
		}
	}

}
