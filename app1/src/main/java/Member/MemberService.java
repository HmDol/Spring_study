package Member;

import java.util.ArrayList;
import java.util.Scanner;

public class MemberService {
	private MemberDao dao;

	public MemberService() {
		dao = new MemberDao();
	}
	
	public void join(Member m){
		dao.insert(m);
	}
	
	public Member getMebmer(String id) {
		return dao.select(id);
	}
	
	public void editMember(Member m) {
		dao.update(m);
	}
	
	public void delMember(String id) {
		dao.delete(id);
	}
	
	public ArrayList<Member> getAll(){
		return dao.selectAll();
	}
	

}