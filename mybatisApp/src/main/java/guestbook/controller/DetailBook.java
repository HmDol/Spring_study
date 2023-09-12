package guestbook.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guestbook.GuestBook;
import guestbook.GuestBookService;

/**
 * Servlet implementation class DetailBook
 */
@WebServlet("/guestbook/detail")
public class DetailBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		GuestBookService service = new GuestBookService();
		GuestBook g = service.getBook(num);
		request.setAttribute("g", g);
		request.setAttribute("path", "detail.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("/guestbook/view.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		GuestBookService service = new GuestBookService();
		int num = Integer.parseInt(request.getParameter("num"));
		String content = request.getParameter("content");
		service.editBook(new GuestBook(num, null, "", content, ""));
		response.sendRedirect(request.getContextPath() + "/guestbook/list?page=1");
	}

}
