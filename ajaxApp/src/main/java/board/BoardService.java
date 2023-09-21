package board;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import member.Member;
import member.MemberDao;
import sqlsession.Factory;

public class BoardService {
	private SqlSessionFactory sqlSessionFactory;

	public BoardService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	public void addBoard(Board b) {
		// 커넥션 수립
		SqlSession session = sqlSessionFactory.openSession();// session open
		// dao interface 구현체를 받아옴
		// dao는 기존의 dao객체와 같다
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);// session을 통해 맵퍼 객체 획득
		// dao 메서드를 호출하여 db작업 수행
		dao.insert(b);
		// 트랜잭션 커밋(쓰기작업에 필요)
		session.commit();
		// 커넥션 닫음
		session.close();
	}
	
	public Board getBoard(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);
		Board b = dao.select(num);
		System.out.println("검색결과:"+b);
		session.close();
		return b;
	}
	
	public ArrayList<Board> getAll(){
		SqlSession session = sqlSessionFactory.openSession();
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);
		ArrayList<Board> list = dao.selectAll();
		session.close();
		return list;
	}
	
	public ArrayList<Board> getByWriter(String writer){
		SqlSession session = sqlSessionFactory.openSession();
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);
		ArrayList<Board> list = dao.selectByWriter(writer);
		session.close();
		return list;
	}
	
	public ArrayList<Board> getByTitle(String title){
		SqlSession session = sqlSessionFactory.openSession();
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);
		ArrayList<Board> list = dao.selectByTitle("%"+title+"%");
		session.close();
		return list;
	}
	
	public void editBoard(Board b) {
		SqlSession session = sqlSessionFactory.openSession();
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);
		dao.update(b);
		session.commit();
		session.close();
	}
	
	public void delBoard(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		BoardDao dao = (BoardDao) session.getMapper(BoardDao.class);
		dao.delete(num);
		session.commit();
		session.close();
	}
}
