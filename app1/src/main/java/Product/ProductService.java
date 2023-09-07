package Product;

import java.util.ArrayList;

public class ProductService {
	private ProductDao dao = null;
	
	public ProductService() {
		dao = new ProductDao();
	}
	
	public void insert(Product p) {
		dao.insert(p);
	}
	
	
	public ArrayList<Product> getAll() {
		
		
		return dao.selectAll();
	}
	
}
