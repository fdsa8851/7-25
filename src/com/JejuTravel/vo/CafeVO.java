package com.JejuTravel.vo;

public class CafeVO {
	private int u_idx;
	private String address;
	private String name;
	private String bHours;
	private String holiday;
	private String food;
	private String groupf;
	
	public String getGroupf() {
		return groupf;
	}
	public void setGroupf(String groupf) {
		this.groupf = groupf;
	}
	public void setFood(String food) {
		this.food = food;
	}
	public String getFood() {
		return food;
	}
	public int getU_idx() {
		return u_idx;
	}
	public void setU_idx(int u_idx) {
		this.u_idx = u_idx;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getbHours() {
		return bHours;
	}
	public void setbHours(String bHours) {
		this.bHours = bHours;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
}
