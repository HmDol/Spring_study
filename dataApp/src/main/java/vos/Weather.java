package vos;

public class Weather {
	private String dateTime;
	private String info;
	private String tmn;
	private String tmx;
	private String rnst;

	public Weather() {
	}

	public Weather(String dateTime, String info, String tmn, String tmx, String rnst) {
		super();
		this.dateTime = dateTime;
		this.info = info;
		this.tmn = tmn;
		this.tmx = tmx;
		this.rnst = rnst;
	}

	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getTmn() {
		return tmn;
	}

	public void setTmn(String tmn) {
		this.tmn = tmn;
	}

	public String getTmx() {
		return tmx;
	}

	public void setTmx(String tmx) {
		this.tmx = tmx;
	}

	public String getRnst() {
		return rnst;
	}

	public void setRnst(String rnst) {
		this.rnst = rnst;
	}

	@Override
	public String toString() {
		return "Weather [dateTime=" + dateTime + ", info=" + info + ", tmn=" + tmn + ", tmx=" + tmx + ", rnst=" + rnst
				+ "]";
	}

}
