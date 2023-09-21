package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import member.Member;
import member.MemberService;

public class EditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		MemberService service = new MemberService();
		if (request.getMethod().equals("GET")) {// get 방식 처리
			String id = request.getParameter("id");
			Member m = service.getMember(id);
			request.setAttribute("m", m);
			request.setAttribute("view", "/member/edit.jsp");
		} else {// post 방식 처리
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			service.editMember(new Member(id, pwd, "", "", 0));
			view = "redirect:" + view;
		}
		return view;
	}

}
