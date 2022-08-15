package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlytintuc.model.Quyen;
import com.quanlytintuc.model.TaiKhoan;

public class TaiKhoanMapper implements RowMapper<TaiKhoan>{

	@Override
	public TaiKhoan mapRow(ResultSet rs) {
		TaiKhoan tk = new TaiKhoan();
		try {
			tk.setMaTaiKhoan(rs.getLong("mataikhoan"));
			tk.setEmail(rs.getString("email"));
			tk.setMatKhau(rs.getString("matkhau"));
			tk.setMaQuyen(rs.getLong("maquyen"));
			tk.setHoVaTen(rs.getString("hovaten"));
			tk.setAnhNen(rs.getString("anhnen"));
			tk.setTrangThai(rs.getInt("trangthai"));
			Quyen quyen = new Quyen();
			try {
				quyen.setMaQuyen(rs.getLong("maquyen"));
				quyen.setTenQuyen(rs.getString("tenquyen"));
				tk.setQuyen(quyen);
			}catch (SQLException e) {
				System.out.println(e.getMessage());
			}
			return tk;
		} catch (SQLException e1) {
			e1.printStackTrace();
			return null;
		}
		
	}

	

}
