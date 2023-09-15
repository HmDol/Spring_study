package dataroom;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import sqlsession.Factory;

public class DataRoomService {
private SqlSessionFactory sqlsessionfactory;
	
	public DataRoomService() {
		sqlsessionfactory = Factory.getSqlSessionFactory();
	}
	
	public void addData(DataRoom dr) {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		
		dao.insert(dr);
		session.commit();
		session.close();
	}
	
	public DataRoom getData(int num) {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		DataRoom i = dao.select(num);
		session.close();
		return i;
		
	}
	
	public ArrayList<DataRoom> getAll() {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		ArrayList<DataRoom> list = dao.selectAll();
		session.close();
		return list;
		
	}
	
	public ArrayList<DataRoom> getByWrter() {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		ArrayList<DataRoom> list = dao.selectByWriter();
		session.close();
		return list;
		
	}
	
	public ArrayList<DataRoom> getByTitle() {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		ArrayList<DataRoom> list = dao.selectByTitle();
		session.close();
		return list;
		
	}
	
	public void delData(int num) {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		dao.delete(num);
		session.commit();
		session.close();
		
		
	}
	
	public void editData(DataRoom dr) {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		dao.update(dr);
		session.commit();
		session.close();
		
	}
	
	public void editCnt(int num, int cnt) {
		SqlSession session = sqlsessionfactory.openSession();
		DataRoomDao dao = (DataRoomDao) session.getMapper(DataRoomDao.class);
		dao.updateCnt(num,cnt);
		session.commit();
		session.close();
		
	}
}
