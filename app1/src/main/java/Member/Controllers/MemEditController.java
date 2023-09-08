package Member.Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.membership.Membership;

import Member.Member;
import Member.MemberService;

/**
 * Servlet implementation class MemEditController
 */
@WebServlet("/MemEditController")
public class MemEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		MemberService service = new MemberService();
		
		Member m = service.getMebmer(id);
		request.setAttribute("m", m);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("/Member/edit.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pwd = request.getParameter("pwd");
		MemberService service = new MemberService();
		service.editMember(new Member(id,pwd,name,""));
		
		RequestDispatcher dis = request.getRequestDispatcher("/MemListController");
		dis.forward(request, response);
	}

}
