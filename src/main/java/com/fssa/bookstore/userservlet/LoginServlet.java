package com.fssa.bookstore.userservlet;

import java.io.IOException;
import java.lang.ProcessHandle.Info;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.InvalidInputException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserService userService = new UserService();
		User user  = new User(); 
		try {
			user =  userService.loginUser(email);
			String pwd = user.getPassword(); 
			if(!password.equals(pwd)) {
				throw new InvalidInputException("Invalid Credentials");
			}
//			Below the code for create the new session
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("loggedInEmail", email);
			httpSession.setAttribute("logInUserDetails", user); 
			Logger.info("succes");
			Logger.info(user);
			response.sendRedirect(request.getContextPath() + "/Index");
		} catch (ServiceException | InvalidInputException  e) {
			String errorMessage = e.getMessage();
			request.setAttribute("errorMessage", errorMessage);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
}
