package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.model.ChuDe;
import com.quanlytintuc.model.TaiKhoan;

public class BaiVietMapper implements RowMapper<BaiViet>{

	@Override
	public BaiViet mapRow(ResultSet rs) {
		BaiViet bv = new BaiViet();
		try {
			bv.setMaBaiViet(rs.getLong("mabaiviet"));
			bv.setTieuDe(rs.getString("tieude"));
			bv.setMaTaiKhoan(rs.getLong("mataikhoan"));
			bv.setMaChuDe(rs.getLong("machude"));
			bv.setMoTa(rs.getString("mota"));
			bv.setNoiDung(rs.getString("noidung"));
			bv.setAnhNen(rs.getString("anhnen"));
			Date ngay = rs.getDate("ngaydang");
			String strNgay = dateFormat.format(ngay); 
			bv.setNgayDang(strNgay);
			bv.setTrangThai(rs.getInt("trangthai"));
			TaiKhoan taikhoan = new TaiKhoan();
			ChuDe chude = new ChuDe();
			try {
				taikhoan.setMaTaiKhoan(rs.getLong("mataikhoan"));
				taikhoan.setHoVaTen(rs.getString("hovaten"));
				taikhoan.setAnhNen(rs.getString("anh"));
				bv.setTaikhoan(taikhoan);
				
				chude.setMaChuDe(rs.getLong("machude"));
				chude.setTenChuDe(rs.getString("tenchude"));
				bv.setChude(chude);
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			return bv;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
