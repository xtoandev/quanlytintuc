package com.quanlytintuc.model;

public class BinhLuan extends AbstractModel<BinhLuan>{
	private Long maBinhLuan;
	private Long maTaiKhoan;
	private Long maBaiViet;
	private String noiDung;
	private String ngayGui;
	TaiKhoan taikhoan = new TaiKhoan();
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
	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}	
	
	
	
	
}
