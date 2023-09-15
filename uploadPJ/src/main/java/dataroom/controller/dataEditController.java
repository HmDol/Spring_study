package dataroom.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataroom.DataRoom;
import dataroom.DataRoomService;


/**
 * Servlet implementation class dataEditController
 */
@WebServlet("/dataroom/edit")
public class dataEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dataEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		
		DataRoomService service = new DataRoomService();
		DataRoom dr = service.getData(num);
		
		request.setAttribute("dr", dr);
		request.setAttribute("view", "/dataroom/edit.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		DataRoomService service = new DataRoomService();
		service.editData(new DataRoom(num,title,content,null,null,null,0));
		
		response.sendRedirect(request.getContextPath()+"/dataroom/edit?num="+num);
	}

}
