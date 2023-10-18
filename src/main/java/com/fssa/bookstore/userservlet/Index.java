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
 * Servlet implementation class ListAllBooks
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGetx`(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		BookService bookService = new BookService();
		try {
			List<Book> listAllBook  = bookService.getAllBook();
			List<Book> listTamilBooks = bookService.getAllTamilBooks("tamil");
			List<Book> listFictionBooks =  bookService.getAllBooksByCatgy("FICTION_BOOKS");
			request.setAttribute("listAllBook", listAllBook);
			request.setAttribute("ListTamilBooks", listTamilBooks);
			request.setAttribute("listFictionBooks", listFictionBooks);
			
			RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
			rd.forward(request, response);
		}
		catch(IOException | ServletException | ServiceException e) {

			e.printStackTrace();
			Logger.info(e.getMessage());
		}
		
	}



}
