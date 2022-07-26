package com.quanlytintuc.model;



public class TaiKhoan {
	private Long maTaiKhoan;
	private String tenDangNhap;
	private String matKhau;
	private Long maQuyen;
	private String hoVaTen;
	private String ngaySinh;
	private String email;
	private int trangThai;
	
	public TaiKhoan() {
		
	}
	
	public TaiKhoan(Long maTaiKhoan, String tenDangNhap, String matKhau, Long maQuyen, String hoVaTen, String ngaySinh,
			String email, int trangThai) {
		
		this.maTaiKhoan = maTaiKhoan;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.maQuyen = maQuyen;
		this.hoVaTen = hoVaTen;
		this.ngaySinh = ngaySinh;
		this.email = email;
		this.trangThai = trangThai;
	}
	
	public Long getMaTaiKhoan() {
		return maTaiKhoan;
	}
	public void setMaTaiKhoan(Long maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	public String getMatKhau() {
		return matKhau;
	}
	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}
	public Long getMaQuyen() {
		return maQuyen;
	}
	public void setMaQuyen(Long maQuyen) {
		this.maQuyen = maQuyen;
	}
	public String getHoVaTen() {
		return hoVaTen;
	}
	public void setHoVaTen(String hoVaTen) {
		this.hoVaTen = hoVaTen;
	}
	public String getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}
	
	
}
