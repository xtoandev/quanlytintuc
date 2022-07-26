package com.quanlytintuc.model;

public class BinhLuan {
	private Long maBinhLuan;
	private Long maTaiKhoan;
	private Long maBaiViet;
	private String noiDung;
	private String ngayGui;
	public BinhLuan() {
		
	}
	public BinhLuan(Long maBinhLuan, Long maTaiKhoan, Long maBaiViet, String noiDung, String ngayGui) {
		
		this.maBinhLuan = maBinhLuan;
		this.maTaiKhoan = maTaiKhoan;
		this.maBaiViet = maBaiViet;
		this.noiDung = noiDung;
		this.ngayGui = ngayGui;
	}
	public Long getMaBinhLuan() {
		return maBinhLuan;
	}
	public void setMaBinhLuan(Long maBinhLuan) {
		this.maBinhLuan = maBinhLuan;
	}
	public Long getMaTaiKhoan() {
		return maTaiKhoan;
	}
	public void setMaTaiKhoan(Long maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}
	public Long getMaBaiViet() {
		return maBaiViet;
	}
	public void setMaBaiViet(Long maBaiViet) {
		this.maBaiViet = maBaiViet;
	}
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	public String getNgayGui() {
		return ngayGui;
	}
	public void setNgayGui(String ngayGui) {
		this.ngayGui = ngayGui;
	}
	
	
}
