package com.fssa.bookstore.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.enums.Categories;
import com.fssa.bookstore.exception.DAOException;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.service.BookService;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   /*
    * Below the code for get the value from  the user.
    * 
    */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out = response.getWriter();
		// Below the code for get all the parameter 
		
		String name = request.getParameter("title");
		double price = Double.parseDouble(request.getParameter("price")) ;
		String category = request.getParameter("book_category");
		String imageUrl = request.getParameter("image_url");
		String language = request.getParameter("language");
		int  quantity = Integer.parseInt(request.getParameter("quantity"));
		String author = request.getParameter("author");
		String description = request.getParameter("description");
		
		
		// Below the code for create a new  instance
		Book book = new Book();
		
		// Convert to the string and set the values
		if (category != null) {
			Categories catgy = Categories.valueOf(category);
			book.setbookCategories(catgy);
			book.setBookName(name);
			book.setBookPrice(price);
			book.setBookImageUrl(imageUrl);
			book.setBooklanguage(language);
			book.setQuantity(quantity);
			book.setAuthor(author);
			book.setBookDescription(description);
			
		}
		else {
			out.print("Given Book Category is not found");
		}
		
		// Below the code for send the all product to the Service
		BookService bookService = new BookService();
	
		try { 
			bookService.addBook(book);
			response.sendRedirect(request.getContextPath()+"/ListAllProduct");
		}
		catch(ServiceException e) {
			e.printStackTrace();
		}
	
	}

}
