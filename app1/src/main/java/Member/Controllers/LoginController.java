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
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		RequestDispatcher dis = request.getRequestDispatcher("/Member/Login.jsp");
		dis.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "/index.jsp";
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
//		response.getWriter().append(id+"/"+pwd);
		
		MemberService service = new MemberService();
		Member m = service.getMebmer(id);
		if(m != null && pwd.equals(m.getPwd())) {
			path = "/Member/menu.jsp";
		}
		
		RequestDispatcher dis = request.getRequestDispatcher(path);
		dis.forward(request, response);
		
		
	}

}
