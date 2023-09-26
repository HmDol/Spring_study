package handler.json;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import handler.Handler;
import vos.Movie;

public class MovieInfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			URL url = new URL(
					"http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101");
			URLConnection conn = url.openConnection();
			InputStream in = conn.getInputStream();
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(in));
			JSONObject res = (JSONObject) obj.get("boxOfficeResult");
			String type = (String) res.get("boxofficeType");
			String showRange = (String) res.get("showRange");
			JSONArray arr = (JSONArray) res.get("dailyBoxOfficeList");
			ArrayList<Movie> list = new ArrayList<>();
			for (int i = 0; i < arr.size(); i++) {
				JSONObject item = (JSONObject) arr.get(i);
				String rank = (String) item.get("rank");
				String movieCd = (String) item.get("movieCd");
				String movieNm = (String) item.get("movieNm");
				String openDt = (String) item.get("openDt");
				String audiCnt = (String) item.get("audiCnt");
				String scrnCnt = (String) item.get("scrnCnt");
				list.add(new Movie(rank, movieCd, movieNm, openDt, audiCnt, scrnCnt));
			}
			request.setAttribute("type", type);
			request.setAttribute("showRange", showRange);
			request.setAttribute("list", list);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("view", "/json/dailyMovieList.jsp");
		return "/index.jsp";
	}

}
