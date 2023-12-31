package imgboard;

import java.sql.Date;
import java.util.ArrayList;

import imgrep.Imgrep;

public class ImgBoard {
	private int num;
	private String writer;
	private Date wdate;
	private String title;
	private String content;
	private String path;
	private ArrayList<Imgrep> reps;
	
	
	public ImgBoard() {}
	
	public ImgBoard(int num, String writer, Date wdate, String title, String content, String path) {
		super();
		this.num = num;
		this.writer = writer;
		this.wdate = wdate;
		this.title = title;
		this.content = content;
		this.path = path;
	}
	
	@Override
	public String toString() {
		return "ImgBoard [num=" + num + ", writer=" + writer + ", wdate=" + wdate + ", title=" + title + ", content="
				+ content + ", path=" + path + "]";
	}

	
	public ArrayList<Imgrep> getReps() {
		return reps;
	}

	public void setReps(ArrayList<Imgrep> reps) {
		this.reps = reps;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getWdate() {
		return wdate;
	}
	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
