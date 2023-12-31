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

import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.model.User;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class BookDetailsServlet
 */
@WebServlet("/BookDetailsServlet")
public class BookDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String bookId = request.getParameter("bookId");
		String bookCategyName = request.getParameter("categy");

		try {
			Book bookDetails = new BookService().readBook(Integer.parseInt(bookId));
			List<Book> bookCategy = new BookService().getAllBooksByCatgy(bookCategyName);
			 
			request.setAttribute("bookDetails", bookDetails);
			request.setAttribute("bookListByCategy", bookCategy);

			RequestDispatcher rd = request.getRequestDispatcher("/bookdetails.jsp");
			rd.forward(request, response);

		} catch (ServiceException | NumberFormatException | ServletException | IOException  e) {
//			response.sendRedirect(request.getContextPath() +"/error_handle.jsp");
			e.printStackTrace();
			Logger.info(e.getMessage());
		}

	}

}
