package com.fssa.bookstore.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.model.Orders;
import com.fssa.bookstore.service.OrderService;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/ListAll")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		OrderService orderService = new OrderService();
		try {
			List<Orders> orderList = orderService.readAllOrder();
			request.setAttribute("orders", orderList);
			RequestDispatcher rd = request.getRequestDispatcher("/order_list.jsp");
			rd.forward(request, response);

		} catch (ServletException | ServiceException | IOException e) {
			e.printStackTrace();
		}
	}
}