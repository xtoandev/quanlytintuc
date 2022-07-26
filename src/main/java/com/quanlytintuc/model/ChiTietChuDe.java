package com.quanlytintuc.model;

public class ChiTietChuDe {
	private Long maBaiViet;
	private Long maChuDe;
	
	public ChiTietChuDe() {
		
	}
	public ChiTietChuDe(Long maBaiViet, Long maChuDe) {
		
		this.maBaiViet = maBaiViet;
		this.maChuDe = maChuDe;
	}
	public Long getMaBaiViet() {
		return maBaiViet;
	}
	public void setMaBaiViet(Long maBaiViet) {
		this.maBaiViet = maBaiViet;
	}
	public Long getMaChuDe() {
		return maChuDe;
	}
	public void setMaChuDe(Long maChuDe) {
		this.maChuDe = maChuDe;
	}
	
}
