package vos;

import java.util.ArrayList;

public class Location {
	private String city;
	ArrayList<Weather> list;

	public Location() {
	}

	public Location(String city, ArrayList<Weather> list) {
		super();
		this.city = city;
		this.list = list;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public ArrayList<Weather> getList() {
		return list;
	}

	public void setList(ArrayList<Weather> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Location [city=" + city + ", list=" + list + "]";
	}

}
