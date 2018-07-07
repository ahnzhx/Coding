package ch12.board;

public class MypageDataBean {
	//board table
	//private int id_num;
	private String subject;
	private String reg_date;
	//kin table
	private String name;
	private String email;
	private String tel;
	private int money;

	public MypageDataBean() {};
	
	public MypageDataBean(String subject, String reg_date, String name, String email, String tel, int Money) {
		this.subject=subject;
		this.reg_date=reg_date;
		this.name=name;
		this.email=email;
		this.tel=tel;
		this.money=Money;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
