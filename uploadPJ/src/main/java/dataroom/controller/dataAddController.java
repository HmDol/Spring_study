package dataroom.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dataroom.DataRoom;
import dataroom.DataRoomService;

/**
 * Servlet implementation class dataAddController
 */
@WebServlet("/dataroom/add")
public class dataAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dataAddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("view", "/dataroom/add.jsp");
		RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path="C:\\Users\\vtwin\\Java_Cloud\\web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\data";
		//업로드 파일의 최대 크기 지정
		int size = 100 * 1024 * 1024; //100M
		
		//MultipartRequest ( 요청객체, 업로드위치, 파일최대크기, 인코딩, 이름중복 처리객체)
		MultipartRequest  multipart = new MultipartRequest(request, path, size, "euc-kr", new DefaultFileRenamePolicy());
		
		String title = multipart.getParameter("title");
		String writer = multipart.getParameter("writer");
		String content = multipart.getParameter("content");
		
		File uploadFile = multipart.getFile("file"); //form양식에서 올라온 file 
		String fname = uploadFile.getName(); // getName() : 파일명
		
		DataRoomService service = new DataRoomService();
		service.addData(new DataRoom(0,title,content,writer,null,"/data/"+fname,0));
		response.sendRedirect(request.getContextPath()+"/dataroom/list");
	}

}
