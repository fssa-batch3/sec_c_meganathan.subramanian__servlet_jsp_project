package com.fssa.bookstore.userservlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.HTTP;

import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.service.UserService;


/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		UserService userService = new UserService();
		HttpSession httpSession = request.getSession(false);
		
		
		try {
			String email = request.getParameter("email");
			userService.deleteUser(email);
			
			if(httpSession != null) {
				httpSession.removeAttribute("LoggedInEmail");
				httpSession.invalidate(); // Remove the all sessions
			}
			response.sendRedirect("login.jsp");
			
		}
		catch(IOException | DAOException | SQLException | IllegalArgumentException e) {
			e.printStackTrace();
			Logger.info(e.getMessage());
		}
		
	}

}
