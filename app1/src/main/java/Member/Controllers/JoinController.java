package Member.Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Member.Member;
import Member.MemberService;


/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //get요청 처리
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//RequestDispatcher:요청 객체를 가지고 경로 이동 제어. 생성자 파람은 이동할 페이지 경로
		RequestDispatcher dis = request.getRequestDispatcher("/Member/join.jsp");
		//forward(요청객체,응답객체) : 포워드 방식으로 실제로 이동을 하는 메서드
		dis.forward(request,response);
		
		//forward : 서버 내에서 기존 요청을 유지해서 이동
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	//post요청 처리
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String gen = request.getParameter("gen");
		//체크 박스처럼 값이 여러개일때 
		String[] hobby = request.getParameterValues("hobby");
		String sel = request.getParameter("sel");
		String msg = request.getParameter("msg");
		String birth = request.getParameter("birth");
		
//		response.getWriter().append("<html><body>");
//		response.getWriter().append("id: " + id);
//		response.getWriter().append("pwd: " +pwd);
//		response.getWriter().append("name: " + name);
//		response.getWriter().append("email: " + email );
//		response.getWriter().append("gen: " + gen);
//		response.getWriter().append("sel: " + sel);
//		response.getWriter().append("msg: " + msg);
//		response.getWriter().append("birth: " + birth);
//		String bb = "";
//		for(String s : hobby) {
//			bb += s+" / ";
//		}
//		response.getWriter().append("hobby: "+ bb);
//		response.getWriter().append("</body></html>");
		MemberService service = new MemberService();
		service.join(new Member(id,pwd,name,email));
		
		RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
		dis.forward(request, response);
		
	}

}
