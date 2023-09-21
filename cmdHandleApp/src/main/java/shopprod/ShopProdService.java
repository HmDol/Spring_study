package shopprod;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import sqlsession.Factory;

public class ShopProdService {
private SqlSessionFactory sqlSessionFactory;
	
	public ShopProdService() {
		sqlSessionFactory = Factory.getSqlSessionFactory();
	}
	
	public void addProd(ShopProd sp){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		dao.insert(sp);		
		session.commit();
		session.close();
	}
	
	public ShopProd getProd(int num){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		ShopProd sp = dao.select(num);	
		session.close();
		return sp;
	}
	
	public ArrayList<ShopProd> getAll(){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		ArrayList<ShopProd> list = dao.selectAll();	
		session.close();
		return list;
	}
	
	public ArrayList<ShopProd> getByName(String name){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		ArrayList<ShopProd> list = dao.selectByName("%"+name+"%");	
		session.close();
		return list;
	}
	
	public ArrayList<ShopProd> getBySeller(String seller){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		ArrayList<ShopProd> list = dao.selectByName("%"+seller+"%");	
		session.close();
		return list;
	}
	
	public void editProd(ShopProd sp){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		dao.update(sp);	
		session.commit();
		session.close();
	}
	
	public void delProd(int num){		
		SqlSession session = sqlSessionFactory.openSession();	
		ShopProdDao dao = session.getMapper(ShopProdDao.class);		
		dao.delete(num);	
		session.commit();
		session.close();
	}
}
