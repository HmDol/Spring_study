package handler.shopprod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import shopprod.ShopProd;
import shopprod.ShopProdService;

public class EditHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		String view = "/index.jsp";
		
		if(request.getMethod().equals("GET")) {
//			System.out.println("get 들어옴");
			int num = Integer.parseInt(request.getParameter("num"));
//			System.out.println(num);
			ShopProdService service = new ShopProdService();
			ShopProd sp = service.getProd(num);
//			System.out.println(sp);
			request.setAttribute("sp", sp);
			request.setAttribute("view", "/shopprod/edit.jsp");
			
		}else {
			System.out.println("post들어옴");
			String name = request.getParameter("name");
			String content = request.getParameter("content");
			int price = Integer.parseInt(request.getParameter("price"));
			int num = Integer.parseInt(request.getParameter("num"));
			System.out.println(num+name + content + price);
			ShopProdService service = new ShopProdService();
			service.editProd(new ShopProd(num,name,content,price,0,null,"","","",""));
			request.setAttribute("view", "/shopprod/edit.jsp");
			view= "redirect:/shopprod/edit.do?num="+num;
			
		}
		return view;
	}

}
