package com.fssa.bookstore.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class ListAllProduct
 */
@WebServlet("/ListAllProduct")
public class ListAllProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAllProduct() {
        super();
       
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookService bookService = new BookService();
		
		try {
			List<Book> bookList = bookService.getAllBook();
			request.setAttribute("bookList", bookList);
		}
		catch (ServiceException e) {
		
			e.printStackTrace();
		}
	
		RequestDispatcher dis = request.getServletContext().getRequestDispatcher("/list_all_product.jsp");
		dis.forward(request, response);

	}



}
