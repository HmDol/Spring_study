package ajaxApp.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class Test3
 */
@WebServlet("/Test3")
public class Test3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Test3() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//json 배열 생성. 
		JSONArray arr = new JSONArray();
		
		JSONObject obj1 = new JSONObject();
		obj1.put("name", "aaa");
		obj1.put("tel", "12324");
		obj1.put("email", "aaa@email");
		arr.add(obj1);
		
		JSONObject obj2 = new JSONObject();
		obj2.put("name", "bbb");
		obj2.put("tel", "rtuy");
		obj2.put("email", "bbb@email");
		arr.add(obj2);
		
		JSONObject obj3 = new JSONObject();
		obj3.put("name", "ccc");
		obj3.put("tel", "9875");
		obj3.put("email", "ccc@email");
		arr.add(obj3);
		
		String txt = arr.toJSONString();
		response.getWriter().append(txt);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
