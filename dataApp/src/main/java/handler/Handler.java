package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Handler {
	String path = "C:\\Users\\KOSTA\\Desktop\\webwork\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\shopprod\\";
	int size = 100 * 1024 * 1024;
	
	//요청을 처리하고 뷰페이지 경로반환
	String process(HttpServletRequest request, HttpServletResponse response);
}
