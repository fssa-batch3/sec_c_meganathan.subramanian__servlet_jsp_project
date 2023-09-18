package com.fssa.bookstore.userservlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.bookstore.logger.Logger;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(false);

		if (session != null) {
			session.removeAttribute("LoggedInEmail");
			Logger.info("Existing Session ID:" + session.getId());

			// invalidate removes all the session attributes
			session.invalidate();

		} else {
			Logger.info("No Session Exists");
		}

		// Redirecting to login page since we have logged out
		response.sendRedirect("login.jsp");
	}

}