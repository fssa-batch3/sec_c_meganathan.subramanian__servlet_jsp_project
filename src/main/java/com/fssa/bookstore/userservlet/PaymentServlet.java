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
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class PaymentServlet
 * 
 */
@WebServlet("/Payment")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String bookId = request.getParameter("bookId");
		
		HttpSession httpSession = request.getSession(false);
		User sessionCheck = (User) httpSession.getAttribute("logInUserDetails");
		if (sessionCheck == null) {
			response.sendRedirect(request.getContextPath() + "/login.jsp");

		} else {
			try {
				Book bookDetails = new BookService().readBook(Integer.parseInt(bookId));
				request.setAttribute("bookDetails", bookDetails);
				
				RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/payment.jsp");
				rd.forward(request, response);
			} catch (ServiceException | NumberFormatException e) {
//				response.sendRedirect(request.getContextPath() +"/404.jsp");
				e.printStackTrace();
				Logger.info(e.getMessage());
			}
		}
	}

}
