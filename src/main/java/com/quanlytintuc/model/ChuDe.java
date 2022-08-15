package com.quanlytintuc.model;

public class ChuDe extends AbstractModel<ChuDe>{
	private Long maChuDe;
	private String tenChuDe;
	
	public ChuDe() {
		
	}
	public ChuDe(Long maChuDe, String tenChuDe) {
		super();
		this.maChuDe = maChuDe;
		this.tenChuDe = tenChuDe;
	}
	public Long getMaChuDe() {
		return maChuDe;
	}
	public void setMaChuDe(Long maChuDe) {
		this.maChuDe = maChuDe;
	}
	public String getTenChuDe() {
		return tenChuDe;
	}
	public void setTenChuDe(String tenChuDe) {
		this.tenChuDe = tenChuDe;
	}
	
	
}
