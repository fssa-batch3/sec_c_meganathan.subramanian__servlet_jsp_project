package com.fssa.bookstore.userservlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.UserService;

/**
 * Servlet implementation class SignUpServlet
 */
@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// get the parameter from the request from the user
		String name = request.getParameter("name");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String confirmPass = request.getParameter("confirmpassword");

		User user = new User();
		try {

			if (name == null || name.trim().isEmpty()) {
				Logger.info("Give name is not valid must give 2 to 20 characters");
			} else {
				user.setName(name);
			}

			if (email == null || email.trim().isEmpty()) {
				Logger.info("Email is invalid Give @");
			} else {
				user.setEmail(email);
			}
			if (pass == null || pass.trim().isEmpty() || confirmPass == null || confirmPass.trim().isEmpty() || !pass.equals(confirmPass)) {
			    Logger.info("Given password does not match or is empty");
			} else {
				user.setPassword(pass);
			}
			if (number == null || number.trim().isEmpty()) {
				Logger.info("Given Number is not valid please mention +91");
			} else {
				user.setPhoneNumber(number);
			}

			Logger.info(user.toString());

			UserService userService = new UserService();
			userService.addUser(user);
			response.sendRedirect(request.getContextPath() + "/login.jsp");

		} catch (IOException | DAOException | SQLException | ServiceException e) {
			e.printStackTrace();
			Logger.info(e.getMessage());
			
		}
		
		
	}

}
