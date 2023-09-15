package dataroom;

import java.sql.Date;

public class DataRoom {
	private int num;
	private String title;
	private String content;
	private String writer;
	private Date wdate;
	private String path;
	private int cnt;
	
	
	
	
	
	
	@Override
	public String toString() {
		return "DataRoom [num=" + num + ", title=" + title + ", content=" + content + ", writer=" + writer + ", wdate="
				+ wdate + ", path=" + path + ", cnt=" + cnt + "]";
	}
	public DataRoom() {
		
	}
	public DataRoom(int num, String title, String content, String writer, Date wdate, String path, int cnt) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.wdate = wdate;
		this.path = path;
		this.cnt = cnt;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}
