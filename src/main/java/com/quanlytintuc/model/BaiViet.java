package com.quanlytintuc.model;

public class BaiViet extends AbstractModel<BaiViet> {
	private Long maBaiViet;
	private String tieuDe;
	private Long maTaiKhoan;
	private Long maChuDe;
	private String moTa;
	private String noiDung;
	private String anhNen;
	private String ngayDang;
	private int  trangThai;
	ChuDe chude = new ChuDe();	
	TaiKhoan taikhoan = new TaiKhoan();
	
	public BaiViet() {
		
	}

	public BaiViet(Long maBaiViet, String tieuDe, Long maTaiKhoan, String moTa, String noiDung, String anhNen,
			 String ngayDang, int trangThai) {
		this.maBaiViet = maBaiViet;
		this.tieuDe = tieuDe;
		this.maTaiKhoan = maTaiKhoan;
		this.moTa = moTa;
		this.noiDung = noiDung;
		this.anhNen = anhNen;
		this.ngayDang = ngayDang;
		this.trangThai = trangThai;
	}

	public Long getMaBaiViet() {
		return maBaiViet;
	}

	public void setMaBaiViet(Long maBaiViet) {
		this.maBaiViet = maBaiViet;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public Long getMaTaiKhoan() {
		return maTaiKhoan;
	}

	public void setMaTaiKhoan(Long maTaiKhoan) {
		this.maTaiKhoan = maTaiKhoan;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public String getAnhNen() {
		return anhNen;
	}

	public void setAnhNen(String anhNen) {
		this.anhNen = anhNen;
	}

	public String getNgayDang() {
		return ngayDang;
	}
	
	public void setNgayDang(String ngayDang) {
		this.ngayDang = ngayDang;
	}
	
	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}


	public Long getMaChuDe() {
		return maChuDe;
	}

	public void setMaChuDe(Long maChuDe) {
		this.maChuDe = maChuDe;
	}

	public TaiKhoan getTaikhoan() {
		return taikhoan;
	}

	public void setTaikhoan(TaiKhoan taikhoan) {
		this.taikhoan = taikhoan;
	}

	public ChuDe getChude() {
		return chude;
	}

	public void setChude(ChuDe chude) {
		this.chude = chude;
	}
	
}
