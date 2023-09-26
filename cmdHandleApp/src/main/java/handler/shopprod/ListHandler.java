package handler.shopprod;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import shopprod.ShopProd;
import shopprod.ShopProdService;

public class ListHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = "/index.jsp";
		
		if(request.getMethod().equals("GET")) {
//			System.out.println("GET요청 받음");
			String seller = request.getParameter("seller");
//			System.out.println(seller);
			ShopProdService service = new ShopProdService();
			ArrayList<ShopProd> list= service.getBySeller(seller);
//			System.out.println(list);
			request.setAttribute("list", list);
			request.setAttribute("view", "/shopprod/list.jsp");
					
		}else {
			
		}
		return view;
	}
	 
}
