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
 * Servlet implementation class BookListByCategy
 */
@WebServlet("/BookListByCategy")
public class BookListByCategy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String catgyName = request.getParameter("Categy");
		
		BookService bookService = new BookService();
		
		try {
			List<Book> bookCategy = bookService.getAllBooksByCatgy(catgyName);
			Logger.info(bookCategy);
			request.setAttribute("bookCategy", bookCategy);
			RequestDispatcher rd = request.getRequestDispatcher("/booklistbycatgy.jsp");
			rd.forward(request, response);
		}
		catch(ServiceException | IOException e) {
			Logger.info(e.getMessage());
			e.printStackTrace();
		}
	} 

}
