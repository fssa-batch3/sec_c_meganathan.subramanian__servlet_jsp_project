package com.fssa.bookstore.userservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.validator.ValidatorException;

import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.Orders;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.OrderService;

/**
 * Servlet implementation class ListAllOrders
 */
@WebServlet("/ListAllOrder")
public class ListAllOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(false);
		User userDetails = (User) session.getAttribute("logInUserDetails");
				
		OrderService orderService = new OrderService();
		try {
			List<Orders> myOrder = orderService.ordersByUserId(userDetails.getId());
			
			Logger.info(myOrder);
			request.setAttribute("myOrder", myOrder);
			RequestDispatcher rd = request.getRequestDispatcher("/order.jsp");
			rd.forward(request, response);
		}
		catch(ServiceException | IOException | ServletException e) {
			e.printStackTrace();
			Logger.info(e.getMessage());
		}
	}

}
