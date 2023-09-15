package dataroom.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dataroom.DataRoomService;

/**
 * Servlet implementation class dataDownload
 */
@WebServlet("/dataroom/download")
public class dataDownload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dataDownload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("다운 시작");
	    String downDir = "C:\\down";
	       
        //사용자가 클릭한 파일명
        String fname = request.getParameter("fname");
       
        String path = downDir + fname;// 다운로드할 파일 전체 경로

        //파일에 대한 정보. 파일크기, 읽기, 쓰기, 실행 가능, 존재하는지 유무....
        File file = new File(path);
       
        //다운로드 파일의 내용을 읽을 스트림 생성
        FileInputStream in = new FileInputStream(path);

        //파일명 인코딩
        fname = new String(fname.getBytes("euc-kr"), "8859_1");

        //다운로드 응답을 보내기 위한 response 설정
        //setContentType(): 파일의 마임설정. 파일의 종류.
        //octet-stream: 바이너리 파일 한 종류
        response.setContentType("application/octet-stream");
        //헤더 설정. 패킷의 중요 정보를 설정. 첨부파일 전송 설정
        response.setHeader("Content-Disposition", "attachment; filename=" + fname);

        //다운로드 파일 내용을 response에 출력할 출력 스트림 획득
        OutputStream os = response.getOutputStream();

        int length;
        //다운로드 파일에서 읽은 내용을 담을 byte배열을 파일 크기와 동일하게 생성
        byte[] b = new byte[(int) file.length()];

        //파일에서 읽은 내용을 response에 출력
        while ((length = in.read(b)) > 0) {
            os.write(b, 0, length);
        }
       
        //강제출력
        os.flush();

        //스트림 닫기
        os.close();
        in.close();
        
		int num = Integer.parseInt(request.getParameter("num"));
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		System.out.println("cnt");
		DataRoomService service = new DataRoomService();
		service.editCnt(num, cnt);
		System.out.println("수정하였습니다.");
		response.sendRedirect(request.getContextPath()+"/dataroom/edit?num="+num);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
