package dto;


public class MemberDTO {
	
	
	private static final long serialVersionUID = -4274700572038677000L;

	private int num; 		    //고유 사용자 번호
	private String name;		// 유저 이름
	private String id;			//아이디 (중복 방지)
	private String password; 	    //비밀번호
	private String email;			//이메일
	private String address; 	//주소
	private String phone;	    //전화번호
	private String gender; 		//성별
	private java.util.Date reg_date; 	//가입일
	
	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public java.util.Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(java.util.Date reg_date) {
		this.reg_date = reg_date;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}

	