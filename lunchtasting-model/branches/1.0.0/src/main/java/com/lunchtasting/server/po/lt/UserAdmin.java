package com.lunchtasting.server.po.lt;

import com.lunchtasting.server.model.BasicPOModel;

public class UserAdmin extends BasicPOModel{
	private Long id;
	private String account;
	private String password;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
