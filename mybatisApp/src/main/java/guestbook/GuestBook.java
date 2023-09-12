package guestbook;

import java.sql.Date;

public class GuestBook {
	private int num;
	private Date wdate;
	private String writer;
	private String content;
	private String pwd;

	public GuestBook() {
	}

	public GuestBook(int num, Date wdate, String writer, String content, String pwd) {
		super();
		this.num = num;
		this.wdate = wdate;
		this.writer = writer;
		this.content = content;
		this.pwd = pwd;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public Date getWdate() {
		return wdate;
	}

	public void setWdate(Date wdate) {
		this.wdate = wdate;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public String toString() {
		return "GuestBook [num=" + num + ", wdate=" + wdate + ", writer=" + writer + ", content=" + content + ", pwd="
				+ pwd + "]";
	}

}