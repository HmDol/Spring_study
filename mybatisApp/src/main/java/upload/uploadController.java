package upload;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


/**
 * Servlet implementation class uploadController
 */
@WebServlet("/upload" )
public class uploadController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public uploadController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path="C:\\Users\\vtwin\\Java_Cloud\\web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\img";
		//업로드 파일의 최대 크기 지정
		int size = 100 * 1024 * 1024; //100M
		
		//MultipartRequest ( 요청객체, 업로드위치, 파일최대크기, 인코딩, 이름중복 처리객체)
		MultipartRequest  multipart = new MultipartRequest(request, path, size, "euc-kr", new DefaultFileRenamePolicy());
		
		String title = multipart.getParameter("title");
		String fname = multipart.getOriginalFileName("f");
		
		System.out.println("title : " + title);
		System.out.println("fname : " + fname);
		
		response.sendRedirect(request.getContextPath()+"/upload/list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
