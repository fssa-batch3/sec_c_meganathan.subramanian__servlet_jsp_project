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
 * Servlet implementation class UpdateProfile
 */
@WebServlet("/UpdateProfileServlet")
public class UpdateProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String phoneNumber = request.getParameter("phonenumber");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String pincode = request.getParameter("pincode");

		UserService service = new UserService();
		User user = new User();
		user.setName(name);
		user.setPhoneNumber(phoneNumber);
		user.setEmail(email);
		user.setAddress(address);
		user.setState(state);
		user.setCity(city);
		user.setPincode(pincode);
		Logger.info(user.toString());

		try {
			service.updateUser(email, user);
			request.setAttribute("userDetails", user);
			RequestDispatcher rd = request.getRequestDispatcher("/profilepage.jsp");
			rd.forward(request, response);
//			response.sendRedirect(request.getContextPath() + "/profilepage.jsp");

		} catch (ServiceException | IOException e) {
//			response.sendRedirect(request.getContextPath() +"/404.jsp");
			e.printStackTrace();
			Logger.info(e.getMessage());
		}
	}
}
