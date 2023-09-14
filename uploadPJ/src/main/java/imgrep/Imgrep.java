package imgrep;

import java.sql.Date;

public class Imgrep {
	private int num;
	private String writer;
	private Date wdate;
	private String content;
	private int parentnum;
	public Imgrep(int num, String writer, Date wdate, String content, int parentnum) {
		super();
		this.num = num;
		this.writer = writer;
		this.wdate = wdate;
		this.content = content;
		this.parentnum = parentnum;
	}
	public Imgrep () {}
	@Override
	public String toString() {
		return "Imgrep [num=" + num + ", writer=" + writer + ", wdate=" + wdate + ", content=" + content
				+ ", parentnum=" + parentnum + "]";
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getParentnum() {
		return parentnum;
	}
	public void setParentnum(int parentnum) {
		this.parentnum = parentnum;
	}
	
	
	
}
