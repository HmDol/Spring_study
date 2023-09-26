package handler.json;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import handler.Handler;
import vos.Food;

public class FoodInfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String path = request.getServletContext().getRealPath("/WEB-INF/files/serviceAreaFoods.json");
		try {
			FileReader fr = new FileReader(path);
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(fr);
			ArrayList<Food> list = new ArrayList<>();
			for (Object k : obj.keySet()) {
				String key = (String) k;
				JSONObject fjson = (JSONObject) obj.get(key);
				Food f = new Food();
				for (Object k2 : fjson.keySet()) {
					String key2 = (String) k2;
					JSONArray fobj = (JSONArray) fjson.get(key2);
					JSONObject info = (JSONObject) fobj.get(0);
					String val = (String) info.get("value");
					if (key2.endsWith("label")) {
						f.setLabel(val);
					} else if (key2.endsWith("salePrice")) {
						f.setPrice(val);
					} else if (key2.endsWith("serviceAreaName")) {
						f.setAreaName(val);
					} else if (key2.endsWith("routeName")) {
						f.setRouteName(val);
					} else if (key2.endsWith("direction")) {
						f.setDirection(val);
					}
				}
				list.add(f);
			}
			request.setAttribute("list", list);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("view", "/json/foodlist.jsp");
		return "/index.jsp";
	}

}
