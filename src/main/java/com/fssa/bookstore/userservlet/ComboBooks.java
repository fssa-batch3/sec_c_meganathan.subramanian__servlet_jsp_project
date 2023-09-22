package com.fssa.bookstore.userservlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class Combobook
 * 
 */
@WebServlet("/ComboBooks")
public class ComboBooks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String catgyName = request.getParameter("Categy");

		BookService bookService = new BookService();

		try {
			List<Book> ComboBooks = bookService.getAllBooksByCatgy(catgyName);

			request.setAttribute("Combobooks", ComboBooks);
			RequestDispatcher rd = request.getRequestDispatcher("/combobooks.jsp");
			rd.forward(request, response);
			
		} catch (ServiceException | IOException | ServletException e) {
//			response.sendRedirect(request.getContextPath() +"/404.jsp");
			e.printStackTrace();
			Logger.info(e.getMessage());
		}
	}

}
