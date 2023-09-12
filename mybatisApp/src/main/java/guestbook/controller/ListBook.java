package guestbook.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import guestbook.GuestBook;
import guestbook.GuestBookService;

/**
 * Servlet implementation class ListBook
 */
@WebServlet("/guestbook/list")
public class ListBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int page = Integer.parseInt(request.getParameter("page"));
		GuestBookService service = new GuestBookService();
		ArrayList<GuestBook> list = service.getByPage(page);
		
		int cnt = service.getCount();//전체줄수
		int cnt2 = (int) Math.ceil((float)cnt/2);//페이지 수
		
		request.setAttribute("cnt", cnt2); 
		request.setAttribute("list", list);
		request.setAttribute("path", "list.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("/guestbook/view.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
