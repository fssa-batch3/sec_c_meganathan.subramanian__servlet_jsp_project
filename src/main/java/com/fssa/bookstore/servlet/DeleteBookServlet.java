package com.fssa.bookstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.enums.Categories;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class DeleteBookServlet
 */
@WebServlet("/DeleteBookServlet")
public class DeleteBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		// Below the code for get all the parameter 
		
		int bookId = Integer.parseInt(request.getParameter("BookId"));	
		
		
		// Below the code for send the data to the service
		BookService bookService = new BookService();
		
		try {
			bookService.deleteBookUsingId(bookId);
			
			 out.println("<script type=\"text/javascript\">");
			    out.println("alert('Are you sure want to delete the product.');");
			    response.sendRedirect(request.getContextPath()+ "/ListAllProduct");
			    out.println("</script>");
		}
		catch(ServiceException | IOException e) {
			e.getStackTrace();
		}
	}

}
