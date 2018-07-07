package ch12.board;
import java.sql.Timestamp;

public class CommentDataBean {
	private int num;
	private int boardRefNum;
	private String content;
	private String writer;
	private String writer_email;
	private Timestamp reg_date;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getBoardRefNum() {
		return boardRefNum;
	}
	public void setBoardRefNum(int boardRefNum) {
		this.boardRefNum = boardRefNum;
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
	public String getWriter_email() {
		return writer_email;
	}
	public void setWriter_email(String writer_email) {
		this.writer_email = writer_email;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
}
