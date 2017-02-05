package io.ht.www;

import java.util.Date;



public class UserBean {
	private int id;
	private String password;
	private String name;
	private String sex;
	private Date birthday;
	private Date date;
	private String username;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Override
	public String toString() {
		return "UserBean [id=" + id + ", password=" + password + ", name="
				+ name + ", sex=" + sex + ", birthday=" + birthday + ", date="
				+ date + ", username=" + username + "]";
	}
	public UserBean(int id, String password, String name, String sex,
			Date birthday, Date date, String username) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.date = date;
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public UserBean() {
		super();
	}
	
}
