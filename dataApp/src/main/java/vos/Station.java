package vos;

public class Station {
	private String seq;
	private String arsId;
	private String busRouteId;
	private String busRouteNm;
	private String direction;
	private String gpsX;
	private String gpsY;
	private String stationNm;

	public Station() {
	}

	public Station(String seq, String arsId, String busRouteId, String busRouteNm, String direction, String gpsX,
			String gpsY, String stationNm) {
		super();
		this.seq = seq;
		this.arsId = arsId;
		this.busRouteId = busRouteId;
		this.busRouteNm = busRouteNm;
		this.direction = direction;
		this.gpsX = gpsX;
		this.gpsY = gpsY;
		this.stationNm = stationNm;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}

	public String getArsId() {
		return arsId;
	}

	public void setArsId(String arsId) {
		this.arsId = arsId;
	}

	public String getBusRouteId() {
		return busRouteId;
	}

	public void setBusRouteId(String busRouteId) {
		this.busRouteId = busRouteId;
	}

	public String getBusRouteNm() {
		return busRouteNm;
	}

	public void setBusRouteNm(String busRouteNm) {
		this.busRouteNm = busRouteNm;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getGpsX() {
		return gpsX;
	}

	public void setGpsX(String gpsX) {
		this.gpsX = gpsX;
	}

	public String getGpsY() {
		return gpsY;
	}

	public void setGpsY(String gpsY) {
		this.gpsY = gpsY;
	}

	public String getStationNm() {
		return stationNm;
	}

	public void setStationNm(String stationNm) {
		this.stationNm = stationNm;
	}

	@Override
	public String toString() {
		return "Station [seq=" + seq + ", arsId=" + arsId + ", busRouteId=" + busRouteId + ", busRouteNm=" + busRouteNm
				+ ", direction=" + direction + ", gpsX=" + gpsX + ", gpsY=" + gpsY + ", stationNm=" + stationNm + "]";
	}

}
