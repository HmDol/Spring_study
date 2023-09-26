package handler.bus;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import handler.Handler;
import vos.RouteInfo;

public class BusInfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String urlstr = "http://ws.bus.go.kr/api/rest/busRouteInfo/getBusRouteList?ServiceKey=BYgs6%2FjSL0du1z8yK4GxYdW1SepukkJ0gXtUP3tGUQpjThEU4JeQKRlspdSnxTWcjia6U6r5oPxW%2F7tK7HZ2sg%3D%3D&strSrch=";
		String busnm = request.getParameter("busnm");
		urlstr += busnm;
		URL url;
		try {
			url = new URL(urlstr);

			// 웹 페이지 url 커넥션 수립. 웹 연결
			URLConnection conn = url.openConnection();
			// dom 작업. xml 파싱작업
			// DocumentBuilderFactory: DocumentBuilder를 얻기 위해
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			// factory로 부터 사용할 builder 획득
			DocumentBuilder builder = factory.newDocumentBuilder();
			// DocumentBuilder:문서를 Dom으로 변환
			Document doc = builder.parse(conn.getInputStream());

			// root요소 추출
			Element root = doc.getDocumentElement();
			String headerCd = root.getElementsByTagName("headerCd").item(0).getTextContent();
			String headerMsg = root.getElementsByTagName("headerMsg").item(0).getTextContent();

			if (!headerCd.equals("0")) {
				response.getWriter().append(headerMsg);
				return null;
			}
			ArrayList<RouteInfo> list = new ArrayList<>();
			NodeList itemlist = root.getElementsByTagName("itemList");
			for (int i = 0; i < itemlist.getLength(); i++) {
				Element item = (Element) itemlist.item(i);
				String stStationNm = item.getElementsByTagName("stStationNm").item(0).getTextContent();
				String edStationNm = item.getElementsByTagName("edStationNm").item(0).getTextContent();
				String firstBusTm = item.getElementsByTagName("firstBusTm").item(0).getTextContent();
				String lastBusTm = item.getElementsByTagName("lastBusTm").item(0).getTextContent();
				String term = item.getElementsByTagName("term").item(0).getTextContent();
				String routeType = item.getElementsByTagName("routeType").item(0).getTextContent();
				String corpNm = item.getElementsByTagName("corpNm").item(0).getTextContent();
				String busnm2 = item.getElementsByTagName("busRouteNm").item(0).getTextContent();
				list.add(new RouteInfo(busnm2, stStationNm, edStationNm, firstBusTm, lastBusTm, term, routeType, corpNm));
			}
			request.setAttribute("list", list);

		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("view", "/bus/businfo.jsp");
		return "/index.jsp";
	}

}
