package la.bean;

import java.io.Serializable;

public class MemberBean implements Serializable {

	private int mem_id;
	private String name;
	private String tel;
	private String email;
	private String mem_address;
	private String birthday;
	private int login_id;
	private String password;
	private String endate;
	private String seDate;


	

	public MemberBean(int mem_id,String name, String tel, String email, String mem_address, String birthday, int login_id, String password) {
		this.mem_id= mem_id;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.mem_address = mem_address;
		this.birthday = birthday;
		this.login_id = login_id;
		this.password = password;
	}
	
	public MemberBean(int mem_id,String name, String tel, String email, String mem_address, String birthday,
			int login_id, String password, String en_date, String se_date) {
		this.mem_id= mem_id;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.mem_address = mem_address;
		this.birthday = birthday;
		this.login_id = login_id;
		this.password = password;
		this.endate = en_date;
		this.seDate = se_date;
	}
	
	public MemberBean(int mem_id,String name, String tel, String email, String mem_address, String birthday,
			int login_id, String password, String en_date) {
		this.mem_id= mem_id;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.mem_address = mem_address;
		this.birthday = birthday;
		this.login_id = login_id;
		this.password = password;
		this.endate = en_date;
		
	}
	public MemberBean (String name, int login_id, String password) {
		this.name=name;
		this.login_id =login_id;
		this.password=password;
		
	}
	
	
	
	public MemberBean(String name,String tel,String email,int login) {
		this.name=name;
		this.tel=tel;
		this.email=email;
		this.login_id=login;
	}
	public MemberBean() {
		// TODO 自動生成されたコンストラクター・スタブ
	}

	public void setMem_id(int mem_id) {
		this.mem_id = mem_id;
	}

	public int getMem_id() {
		return mem_id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getTel() {
		return tel;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}

	public String getMem_address() {
		return mem_address;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getBirthday() {
		return birthday;
	}
	
	public void setLogin_id(int login_id) {
		this.login_id = login_id;
	}

	public int getLogin_id() {
		return login_id;
	}
	
	public String getEndate() {
		return endate;
	}

	public void setEndate(String endate) {
		this.endate = endate;
	}

	public String getSeDate() {
		return seDate;
	}

	public void setSeDate(String seDate) {
		this.seDate = seDate;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}
	

}
