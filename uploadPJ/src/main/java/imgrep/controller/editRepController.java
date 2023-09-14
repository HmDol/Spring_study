																																																																																					package imgrep.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imgboard.ImgBoard;
import imgboard.ImgBoardService;
import imgrep.Imgrep;
import imgrep.ImgrepService;

/**
 * Servlet implementation class editRepController
 */
@WebServlet("/imgrep/edit")
public class editRepController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editRepController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		ImgrepService service = new ImgrepService();
		service.delRep(num);
		
		response.sendRedirect(request.getContextPath()+"/listImgController");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String content = request.getParameter("repcont");
		
		ImgrepService service = new ImgrepService();
		service.editRep(new Imgrep(num,"",null,content,0));
		
		response.sendRedirect(request.getContextPath()+"/listImgController");
		
	}

}
