package Product.Controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Product.Product;
import Product.ProductService;

/**
 * Servlet implementation class DetailProdController
 */
@WebServlet("/DetailProdController")
public class DetailProdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailProdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		ProductService service = new ProductService();
		Product p = service.select(num);
		String path = "/Product/DetailProd.jsp"; // 검색한 상품이 남꺼면 상세페이지
		//세션에서 로그인 아이디 추출
		HttpSession session = request.getSession(false);
		String loginId = (String) session.getAttribute("loginId");
		if(loginId.equals(p.getSeller())) {
			path = "/Product/edit.jsp"; // 내상품이면 수정 페이지
		}
		
		
		request.setAttribute("product",p);
		RequestDispatcher dis = request.getRequestDispatcher(path);
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		int price = Integer.parseInt(request.getParameter("price"));
		
		ProductService service = new ProductService();
		service.editProduct(new Product(num,"",price,0,""));
		
		response.sendRedirect("/app1/ProListController");
	}

}
