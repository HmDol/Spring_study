package vos;

public class Movie {
	private String rank;
	private String movieCd;
	private String movieNm;
	private String openDt;
	private String audiCnt;
	private String scrnCnt;

	public Movie() {
	}

	public Movie(String rank, String movieCd, String movieNm, String openDt, String audiCnt, String scrnCnt) {
		super();
		this.rank = rank;
		this.movieCd = movieCd;
		this.movieNm = movieNm;
		this.openDt = openDt;
		this.audiCnt = audiCnt;
		this.scrnCnt = scrnCnt;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getMovieCd() {
		return movieCd;
	}

	public void setMovieCd(String movieCd) {
		this.movieCd = movieCd;
	}

	public String getMovieNm() {
		return movieNm;
	}

	public void setMovieNm(String movieNm) {
		this.movieNm = movieNm;
	}

	public String getOpenDt() {
		return openDt;
	}

	public void setOpenDt(String openDt) {
		this.openDt = openDt;
	}

	public String getAudiCnt() {
		return audiCnt;
	}

	public void setAudiCnt(String audiCnt) {
		this.audiCnt = audiCnt;
	}

	public String getScrnCnt() {
		return scrnCnt;
	}

	public void setScrnCnt(String scrnCnt) {
		this.scrnCnt = scrnCnt;
	}

	@Override
	public String toString() {
		return "Movie [rank=" + rank + ", movieCd=" + movieCd + ", movieNm=" + movieNm + ", openDt=" + openDt
				+ ", audiCnt=" + audiCnt + ", scrnCnt=" + scrnCnt + "]";
	}

}
