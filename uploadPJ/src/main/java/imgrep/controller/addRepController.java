package imgrep.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imgrep.Imgrep;
import imgrep.ImgrepService;

/**
 * Servlet implementation class addRepController
 */
@WebServlet("/addRepController")
public class addRepController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addRepController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		int parentnum = Integer.parseInt(request.getParameter("parentnum"));
		ImgrepService service = new ImgrepService();
		service.addRep(new Imgrep(0,writer,null,content,parentnum));
		
		response.sendRedirect(request.getContextPath() + "/listImgController");
		
		
	}

}
