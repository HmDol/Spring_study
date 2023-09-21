package handler.shopprod;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import handler.Handler;
import shopprod.ShopProd;
import shopprod.ShopProdService;

public class AddHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String view = "/index.jsp";
		if (request.getMethod().equals("GET")) {// get 방식 처리
			request.setAttribute("view", "/shopprod/add.jsp");
		} else {// post 방식 처리

			try {
				MultipartRequest req = new MultipartRequest(request, path, size, "utf-8",
						new DefaultFileRenamePolicy());
				File[] f = { req.getFile("img1"), req.getFile("img2"), req.getFile("img3"), req.getFile("img4") };
				String name = req.getParameter("name");
				String content = req.getParameter("content");
				int price = Integer.parseInt(req.getParameter("price"));
				int amount = Integer.parseInt(req.getParameter("amount"));
				String seller = req.getParameter("seller");
				String[] imgs = new String[4];
				for (int i = 0; i < f.length; i++) {
					if (f[i] != null && f[i].length() != 0) {
						imgs[i] = f[i].getName();
					} else {
						imgs[i] = "";
					}
				}
				for(String s: imgs) {
					System.out.println(s);
				}
				ShopProdService service = new ShopProdService();
				service.addProd(new ShopProd(0, name, content, price, amount, seller, imgs[0], imgs[1], imgs[2], imgs[3]));

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			view = "redirect:/index.jsp";
		}
		return view;
	}

}
