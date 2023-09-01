package com.fssa.bookstore.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class ViewBookServlet
 */
@WebServlet("/ViewBookServlet")
public class ViewBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int bookId = Integer.parseInt(request.getParameter("BookId"));
		
		try {
			Book book  = new BookService().readBook(bookId); 
			request.setAttribute("Book", book); // oru product matum view pana iru show panure SUPER BRO
			
			
			
			RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/view_book.jsp");
			dis.forward(request, response);
		}
		
		catch(ServiceException  | DAOException e) {
			e.printStackTrace();
		}
	}


}
