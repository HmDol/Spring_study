package imgboard;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;

public class ImgBoardService {
	private SqlSessionFactory sqlsessionfactory;
	
	public ImgBoardService() {
		sqlsessionfactory = Factory.getSqlSessionFactory();
	}
	
	public void addImg(ImgBoard i) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgBoardDao dao = (ImgBoardDao) session.getMapper(ImgBoardDao.class);
		
		dao.insert(i);
		session.commit();
		session.close();
	}
	
	public ImgBoard getImg(int num) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgBoardDao dao = (ImgBoardDao) session.getMapper(ImgBoardDao.class);
		ImgBoard i = dao.select(num);
		session.close();
		return i;
		
	}
	
	public ArrayList<ImgBoard> getAll() {
		SqlSession session = sqlsessionfactory.openSession();
		ImgBoardDao dao = (ImgBoardDao) session.getMapper(ImgBoardDao.class);
		ArrayList<ImgBoard> list = dao.selectAll();
		session.close();
		return list;
		
	}
	
	public void delImg(int num) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgBoardDao dao = (ImgBoardDao) session.getMapper(ImgBoardDao.class);
		dao.delete(num);
		session.commit();
		session.close();
		
		
	}
	
	public void editImg(ImgBoard i) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgBoardDao dao = (ImgBoardDao) session.getMapper(ImgBoardDao.class);
		dao.update(i);
		session.commit();
		session.close();
		
	}
}
