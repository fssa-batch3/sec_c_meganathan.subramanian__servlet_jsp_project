package com.fssa.bookstore.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.bookstore.enums.BookBinding;
import com.fssa.bookstore.enums.BookReturnable;
import com.fssa.bookstore.enums.Categories;
import com.fssa.bookstore.exception.ServiceException;
import com.fssa.bookstore.logger.Logger;
import com.fssa.bookstore.model.Book;
import com.fssa.bookstore.service.BookService;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        // Get the parameter values from the request
        String quantity = request.getParameter("quantity");
        String bookName = request.getParameter("bookName");
        String bookImageUrl = request.getParameter("bookImageUrl");
        String bookPrice = request.getParameter("bookPrice");
        String bookDescription = request.getParameter("bookDescription");
        String authorImgUrl = request.getParameter("authorImgUrl");
        String author = request.getParameter("author");
        String aboutAuthor = request.getParameter("aboutAuthor");
        String bookLanguage = request.getParameter("booklanguage");
        String publisherImprint = request.getParameter("publisherImprint");
        String publisherDate = request.getParameter("publisherDate");
        String bookIsbn = request.getParameter("bookIsbn");
        String bookwidth = request.getParameter("bookwidth");
        String noOfPages = request.getParameter("noOfPages");
        String bookHeight = request.getParameter("bookHeight");
        String bookDepth = request.getParameter("bookDepth");
        String bookWeight = request.getParameter("bookWeight");
        String bookCategory = request.getParameter("book_category");
        String bookBinding = request.getParameter("bookBinding");
        String returnable = request.getParameter("returnable");
        DateTimeFormatter dateFormat = DateTimeFormatter.ofPattern("dd-MMM-yyyy");
        
     // Below the code for create a new instance
        Book book = new Book();

        // Convert to the string and set the values
        if (bookCategory != null) {
            Categories catgy = Categories.valueOf(bookCategory);
            BookBinding binding = BookBinding.valueOf(bookBinding);
            BookReturnable bookReturnable = BookReturnable.valueOf(returnable);

            try {
                book.setBookCategories(catgy);
                book.setBookName(bookName);
                book.setBookPrice(Double.parseDouble(bookPrice));
                book.setBookImageUrl(bookImageUrl);
                book.setBooklanguage(bookLanguage);
                book.setQuantity(Integer.parseInt(quantity));
                book.setAuthor(author);
                book.setBookDescription(bookDescription);
                book.setAboutAuthor(aboutAuthor);
                book.setAuthorImgUrl(authorImgUrl);
                LocalDate localDate = LocalDate.parse(publisherDate,dateFormat);
                book.setPublisherDate(localDate);	
                book.setPublisherImprint(publisherImprint);
                book.setBookBinding(binding);
                book.setBookDepth(Double.parseDouble(bookDepth));
                book.setNoOfPages(Integer.parseInt(noOfPages));
                book.setBookWeight(Double.parseDouble(bookWeight));
                book.setBookHeight(Double.parseDouble(bookHeight));
                book.setIsbn(bookIsbn);
                book.setBookwidth(Double.parseDouble(bookwidth));
                book.setReturnable(bookReturnable);
            } catch (NumberFormatException e) {
                Logger.info(e.getMessage());
                e.printStackTrace();
            }

        } else {
            out.print("Given Book Category is not found");
        }

        // Below the code for send all product to the Service
        BookService bookService = new BookService();

        try {
            bookService.addBook(book);
            response.sendRedirect(request.getContextPath() + "/ListAllProduct");
        } catch (ServiceException | IOException | IllegalArgumentException e) {
            String errorMessage = e.getMessage();
            request.setAttribute("errorMessage", errorMessage);
            request.getRequestDispatcher("add_product.jsp").forward(request, response);
        }

    }
}
