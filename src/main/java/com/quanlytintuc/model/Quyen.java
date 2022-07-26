package com.quanlytintuc.model;

public class Quyen {
	private Long maQuyen;
	private String tenQuyen;
	
	public Quyen() {

	}
	
	public Quyen(Long maQuyen, String tenQuyen) {
		this.maQuyen = maQuyen;
		this.tenQuyen = tenQuyen;
	}
	
	public Long getMaQuyen() {
		return maQuyen;
	}
	
	public void setMaQuyen(Long maQuyen) {
		this.maQuyen = maQuyen;
	}
	
	public String getTenQuyen() {
		return tenQuyen;
	}
	
	public void setTenQuyen(String tenQuyen) {
		this.tenQuyen = tenQuyen;
	}
	
	
}
