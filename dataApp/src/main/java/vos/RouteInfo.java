package vos;

public class RouteInfo {
	private String busnm;
	private String stStationNm;// 기점
	private String edStationNm;// 종점
	private String firstBusTm;// 첫차시간
	private String lastBusTm;// 막차시간
	private String term;// 배차간격
	private String routeType;// 타입(지선,간선,마을,공항....)
	private String corpNm;// 운수회사

	public RouteInfo() {
	}

	public RouteInfo(String busnm, String stStationNm, String edStationNm, String firstBusTm, String lastBusTm,
			String term, String routeType, String corpNm) {
		super();
		this.busnm = busnm;
		this.stStationNm = stStationNm;
		this.edStationNm = edStationNm;
		this.firstBusTm = firstBusTm;
		this.lastBusTm = lastBusTm;
		this.term = term;
		this.routeType = routeType;
		this.corpNm = corpNm;
	}

	public RouteInfo(String stStationNm, String edStationNm, String firstBusTm, String lastBusTm, String term,
			String routeType, String corpNm) {
		super();
		this.stStationNm = stStationNm;
		this.edStationNm = edStationNm;
		this.firstBusTm = firstBusTm;
		this.lastBusTm = lastBusTm;
		this.term = term;
		this.routeType = routeType;
		this.corpNm = corpNm;
	}

	public String getBusnm() {
		return busnm;
	}

	public void setBusnm(String busnm) {
		this.busnm = busnm;
	}

	public String getStStationNm() {
		return stStationNm;
	}

	public void setStStationNm(String stStationNm) {
		this.stStationNm = stStationNm;
	}

	public String getEdStationNm() {
		return edStationNm;
	}

	public void setEdStationNm(String edStationNm) {
		this.edStationNm = edStationNm;
	}

	public String getFirstBusTm() {
		return firstBusTm;
	}

	public void setFirstBusTm(String firstBusTm) {
		this.firstBusTm = firstBusTm;
	}

	public String getLastBusTm() {
		return lastBusTm;
	}

	public void setLastBusTm(String lastBusTm) {
		this.lastBusTm = lastBusTm;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getRouteType() {
		return routeType;
	}

	public void setRouteType(String routeType) {
		this.routeType = routeType;
	}

	public String getCorpNm() {
		return corpNm;
	}

	public void setCorpNm(String corpNm) {
		this.corpNm = corpNm;
	}

	@Override
	public String toString() {
		return "RouteInfo [stStationNm=" + stStationNm + ", edStationNm=" + edStationNm + ", firstBusTm=" + firstBusTm
				+ ", lastBusTm=" + lastBusTm + ", term=" + term + ", routeType=" + routeType + ", corpNm=" + corpNm
				+ "]";
	}

}
