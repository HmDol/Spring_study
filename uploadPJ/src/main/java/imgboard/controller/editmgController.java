package imgboard.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import imgboard.ImgBoard;
import imgboard.ImgBoardService;

/**
 * Servlet implementation class editmgController
 */
@WebServlet("/imgboard/edit")
public class editmgController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editmgController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "C:\\Users\\vtwin\\Java_Cloud\\web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img";
		int num = Integer.parseInt(request.getParameter("num"));
		ImgBoardService service = new ImgBoardService();
		
		ImgBoard ib =  service.getImg(num);
		String fname = ib.getPath().split("/")[2];
		System.out.println("fname : " + fname);
		
		//업로드된 파일 삭제
		File delf = new File(path+"/"+fname);
		delf.delete();
		
		//DB에서 삭제
		service.delImg(num);
		response.sendRedirect(request.getContextPath() + "/listImgController");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		ImgBoardService service = new ImgBoardService();
		service.editImg(new ImgBoard(num,null,null,title,content,""));
		
		response.sendRedirect(request.getContextPath()+"/listImgController");
	}

}
