package handler.xml;

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
import vos.Location;
import vos.Weather;

public class WeatherHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String urlstr = "http://www.kma.go.kr/weather/forecast/mid-term-rss3.jsp?stnId=109";
		try {
			// url 객체
			URL url = new URL(urlstr);

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
			Element header = (Element) root.getElementsByTagName("header").item(0);
			String title = header.getElementsByTagName("title").item(0).getTextContent();
			String desc = header.getElementsByTagName("wf").item(0).getTextContent();

			request.setAttribute("title", title);
			request.setAttribute("desc", desc);

			NodeList locs = root.getElementsByTagName("location");
			ArrayList<Location> list = new ArrayList<>();

			for (int i = 0; i < locs.getLength(); i++) {
				Element loc = (Element) locs.item(i);
				String city = loc.getElementsByTagName("city").item(0).getTextContent();
				NodeList datas = loc.getElementsByTagName("data");
				ArrayList<Weather> winfos = new ArrayList<>();
				for (int j = 0; j < datas.getLength(); j++) {
					Element data = (Element) datas.item(j);
					String dateTime = data.getElementsByTagName("tmEf").item(0).getTextContent();
					String wf = data.getElementsByTagName("wf").item(0).getTextContent();
					String tmn = data.getElementsByTagName("tmn").item(0).getTextContent();
					String tmx = data.getElementsByTagName("tmx").item(0).getTextContent();
					String rnSt = data.getElementsByTagName("rnSt").item(0).getTextContent();
					winfos.add(new Weather(dateTime, wf, tmn, tmx, rnSt));
				}
				list.add(new Location(city, winfos));
			}
			request.setAttribute("list", list);
			// xml 데이터 출력
//			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
//			StringBuilder sb = new StringBuilder();
//			String str = "";
//			while ((str = in.readLine()) != null) {
//				sb.append(str + "\n");
//			}
//			str = sb.toString();
//			System.out.
//			println(str);
//			in.close();
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
		request.setAttribute("view", "/xml/weatherinfo.jsp");
		return "/index.jsp";
	}

}
