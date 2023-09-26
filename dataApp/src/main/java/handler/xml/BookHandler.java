package handler.xml;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import handler.Handler;
import vos.Book;

public class BookHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//자료 파일의 웹 경로 저장
		String path = request.getServletContext().getRealPath("/WEB-INF/files/data.xml");
		try {
			//데이터 파일에서 읽을 수 있는 입력 스트림 생성
			FileInputStream fi = new FileInputStream(path);
			
			//dom 작업. xml 파싱작업
			// DocumentBuilderFactory: DocumentBuilder를 얻기 위해
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			// factory로 부터 사용할 builder 획득
			DocumentBuilder builder = factory.newDocumentBuilder();
			// DocumentBuilder:문서를 Dom으로 변환
			Document doc = builder.parse(fi);

			// root요소 추출 <books>
			Element root = doc.getDocumentElement();
			NodeList list = root.getElementsByTagName("book");// <book>4개를 list에 담음
			ArrayList<Book> datas = new ArrayList<>();
			for (int i = 0; i < list.getLength(); i++) {
				//item(i):NodeList에서 i번째 요소를 추출
				Element child = (Element) list.item(i);// list에서 <book> 하나씩 꺼내서 child에 담음
				//태그값 읽기
				//getElementsByTagName("태그명"):태그명으로 검색해서 NodeList에 담아 반환
				//item(0): 0번방 요소 한개 추출
				//getTextContent(): 그 요소의 텍스트값 읽음
				String bookid = child.getElementsByTagName("bookid").item(0).getTextContent();
				String title = child.getElementsByTagName("title").item(0).getTextContent();
				String author = child.getElementsByTagName("author").item(0).getTextContent();
				String price = child.getElementsByTagName("price").item(0).getTextContent();
				Book b = new Book(Integer.parseInt(bookid), title, author, Integer.parseInt(price));
				datas.add(b);
			}
			request.setAttribute("datas", datas);
			fi.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("view", "/xml/booklist.jsp");
		return "/index.jsp";
	}

}
