package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.quanlytintuc.model.BaiViet;

public class BaiVietMapper implements RowMapper<BaiViet>{

	@Override
	public BaiViet mapRow(ResultSet rs) {
		BaiViet bv = new BaiViet();
		try {
			bv.setMaBaiViet(rs.getLong("mabaiviet"));
			bv.setTieuDe(rs.getString("tieude"));
			bv.setMaTaiKhoan(rs.getLong("mataikhoan"));
			bv.setMoTa(rs.getString("mota"));
			bv.setNoiDung(rs.getString("noidung"));
			bv.setAnhNen(rs.getString("anhnen"));
			Date ngay = rs.getDate("ngaydang");
			String strNgay = dateFormat.format(ngay); 
			bv.setNgayDang(strNgay);
			bv.setTrangThai(rs.getInt("trangthai"));
			return bv;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

}
