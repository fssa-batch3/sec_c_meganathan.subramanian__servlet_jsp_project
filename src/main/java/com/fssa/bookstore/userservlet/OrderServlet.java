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
import com.fssa.bookstore.model.Orders;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.OrderService;

/**
 * Servlet implementation class UpdatePaymentServlet
 */
@WebServlet("/Order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String bookId = request.getParameter("bookId");
		String bookName = request.getParameter("bookName");
		String bookPrice = request.getParameter("bookPrice");
		String bookImgUrl = request.getParameter("bookImgUrl");
		String address = request.getParameter("delivery_address");
		String qty = request.getParameter("qty");

		// Below the code for get the session
		HttpSession session = request.getSession(false);
		User user = (User) session.getAttribute("logInUserDetails");

		Orders order = new Orders();
		OrderService orderService = new OrderService();
		
		try {
			order.setProductId(Integer.parseInt(bookId));
			order.setUserId(user.getId());
			order.setAddress(address);
			order.setPincode(user.getPincode());
			order.setCity(user.getCity());
			order.setState(user.getState()); 
			order.setBookImgUrl(bookImgUrl);
			order.setPrice(Double.parseDouble(bookPrice));
			order.setBookName(bookName);
			order.setQuantity(Integer.parseInt(qty));
			orderService.addOrder(order);
			
			response.sendRedirect(request.getContextPath()+ "/order_confirmation.jsp");
//			request.setAttribute("orderDetails", order);
//			RequestDispatcher rd = request.getRequestDispatcher("/order.jsp");
//			rd.forward(request, response);	
			
		} catch (ServiceException | NumberFormatException | IOException e) {
			e.printStackTrace();
			Logger.info(e.getMessage());
		}
	}

}
