package imgrep;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import imgboard.ImgBoard;
import imgboard.ImgBoardDao;
import sqlsession.Factory;

public class ImgrepService {
	private SqlSessionFactory sqlsessionfactory;
	
	public ImgrepService() {
		sqlsessionfactory = Factory.getSqlSessionFactory();
	}
	
	public void addRep(Imgrep ir) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgrepDao dao = (ImgrepDao) session.getMapper(ImgrepDao.class);
	
		dao.insert(ir);
		session.commit();
		session.close();
	}
	
	public ArrayList<Imgrep> getReps(int parentnum) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgrepDao dao = (ImgrepDao) session.getMapper(ImgrepDao.class);
		
		ArrayList<Imgrep> list = new ArrayList<Imgrep>();
		list = dao.selectByParent(parentnum);
		
		session.close();
		
		return list;
	}
	
	public void editRep(Imgrep ir) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgrepDao dao = (ImgrepDao) session.getMapper(ImgrepDao.class);
		dao.update(ir);
		session.commit();
		session.close();
	}
	
	public void delRep(int num) {
		SqlSession session = sqlsessionfactory.openSession();
		ImgrepDao dao = (ImgrepDao) session.getMapper(ImgrepDao.class);
		dao.delete(num);
		
		session.commit();
		session.close();
	}
	
}
