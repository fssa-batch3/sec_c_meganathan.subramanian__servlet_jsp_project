package com.fssa.bookstore.userservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.service.OrderService;

/**
 * Servlet implementation class CancelOrder
 */
@WebServlet("/cancel_order")
public class CancelOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String orderId = request.getParameter("orderId");
		
		OrderService orderService = new OrderService();
		try {
			orderService.cancelOrder(Integer.parseInt(orderId));
			RequestDispatcher rd = request.getRequestDispatcher("/ListAllOrder");
			rd.forward(request, response);
		}
		catch(ServiceException  | NumberFormatException | ServletException | IOException e) {
			e.printStackTrace();
		}
	}



}
