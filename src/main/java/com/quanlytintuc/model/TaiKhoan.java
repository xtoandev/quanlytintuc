package com.quanlytintuc.model;



public class TaiKhoan extends AbstractModel<TaiKhoan>{
	private Long maTaiKhoan;
	private String matKhau;
	private Long maQuyen;
	private String hoVaTen;
	private String ngaySinh;
	private String email;
	private String anhNen;
	private int trangThai;
	private Quyen quyen = new Quyen();
	
	
	public TaiKhoan() {
		
	}
	
	public TaiKhoan(Long maTaiKhoan, String matKhau, Long maQuyen, String hoVaTen, String ngaySinh,
			String email, int trangThai) {
		
		this.maTaiKhoan = maTaiKhoan;
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
	
	public String getAnhNen() {
		return anhNen;
	}

	public void setAnhNen(String anhNen) {
		this.anhNen = anhNen;
	}

	public int getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	
	public Quyen getQuyen() {
		return quyen;
	}

	public void setQuyen(Quyen quyen) {
		this.quyen = quyen;
	}

	public TaiKhoan(Long maTaiKhoan, String matKhau, Long maQuyen, String hoVaTen, String ngaySinh, String email,
			int trangThai, Quyen quyen) {
		this.maTaiKhoan = maTaiKhoan;
		this.matKhau = matKhau;
		this.maQuyen = maQuyen;
		this.hoVaTen = hoVaTen;
		this.ngaySinh = ngaySinh;
		this.email = email;
		this.trangThai = trangThai;
		this.quyen = quyen;
	}
	
	
}
