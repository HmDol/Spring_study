package guestbook;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;

public class GuestBookService {
	private SqlSessionFactory sqlSessionFactory;

	public GuestBookService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}

	// 글작성
	public void addBook(GuestBook g) {
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		dao.insert(g);
		session.commit();
		session.close();
	}

	// 번호로 검색
	public GuestBook getBook(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		GuestBook g = dao.select(num);
		session.close();
		return g;
	}

	// 전체검색
	public ArrayList<GuestBook> getAll() {
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		ArrayList<GuestBook> list = dao.selectAll();
		session.close();
		return list;
	}

	// 전체줄수 검색
	public int getCount() {
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		int cnt = dao.selectCount();
		session.close();
		return cnt;
	}

	// 전체검색
	public ArrayList<GuestBook> getByPage(int page) {
		int p1 = 2 * (page-1) + 1;
		int p2 = 2 * page;
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		ArrayList<GuestBook> list = dao.selectByPage(p1, p2);
		session.close();
		return list;
	}

	// 수정
	public void editBook(GuestBook g) {
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		dao.update(g);
		session.commit();
		session.close();
	}

	// 삭제
	public void delBook(int num) {
		SqlSession session = sqlSessionFactory.openSession();
		GuestBookDao dao = session.getMapper(GuestBookDao.class);
		dao.delete(num);
		session.commit();
		session.close();
	}
}
