package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.quanlytintuc.model.BinhLuan;
import com.quanlytintuc.model.TaiKhoan;

public class BinhLuanMapper implements RowMapper<BinhLuan>{

	@Override
	public BinhLuan mapRow(ResultSet rs) {
		BinhLuan bl = new BinhLuan();
		try {
			bl.setMaBinhLuan(rs.getLong("mabinhluan"));
			bl.setMaTaiKhoan(rs.getLong("mataikhoan"));
			bl.setMaBaiViet(rs.getLong("mabaiviet"));
			bl.setNoiDung(rs.getString("noidung"));
			Date ngay = rs.getDate("ngaygui");
			String strNgay = dateFormat.format(ngay); 
			bl.setNgayGui(strNgay);

			TaiKhoan taikhoan = new TaiKhoan();
			try {
				taikhoan.setMaTaiKhoan(rs.getLong("mataikhoan"));
				taikhoan.setEmail(rs.getString("email"));
				taikhoan.setHoVaTen(rs.getString("hovaten"));
				taikhoan.setAnhNen(rs.getString("anh"));
				bl.setTaikhoan(taikhoan);
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			return bl;
		} catch (SQLException e1) {
			e1.printStackTrace();
			return null;
		}
	}

}
