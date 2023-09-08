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
	
	public ArrayList<Product> getProdBySeller(String seller){
		return dao.selectBySeller(seller);
	}
	
	public ArrayList<Product> getProdByName(String name){
		return dao.selectByName(name);
	}
	
	public ArrayList<Product> getProdByPrice(int price1, int price2){
	return dao.selectByPrice(price1, price2);
	}
	
	public Product select(int num) {
		return dao.select(num);
	}
	
	public void editProduct(Product p) {
		dao.update(p);
	}
	
	public void delProduct(int num) {
		dao.delete(num);
	}
}
