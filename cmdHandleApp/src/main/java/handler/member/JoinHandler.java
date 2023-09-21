package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import member.Member;
import member.MemberService;

public class JoinHandler implements Handler {
	//요청을 처리하고 뷰페이지 경로반환
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		if(request.getMethod().equals("GET")) {//get 방식 처리
			request.setAttribute("view", "/member/join.jsp");
		}else {//post 방식 처리
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			int type = Integer.parseInt(request.getParameter("type"));
			MemberService service = new MemberService();
			service.addMember(new Member(id, pwd, name, email, type));
			view = "redirect:/index.jsp";
		}
		return view;
	}

}
