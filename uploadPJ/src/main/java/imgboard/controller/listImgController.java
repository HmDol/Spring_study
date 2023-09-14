package imgboard.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imgboard.ImgBoard;
import imgboard.ImgBoardService;
import imgrep.ImgrepService;

/**
 * Servlet implementation class listImgController
 */
@WebServlet("/listImgController")
public class listImgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listImgController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ImgBoardService service = new ImgBoardService();
		ImgrepService rservice = new ImgrepService();
		ArrayList<ImgBoard> list = service.getAll();
		for(ImgBoard ib:list) {
			ib.setReps(rservice.getReps(ib.getNum()));
			
		}
		request.setAttribute("list", list);
		request.setAttribute("view", "/imgboard/list.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
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
