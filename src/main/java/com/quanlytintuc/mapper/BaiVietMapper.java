package com.quanlytintuc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.quanlytintuc.model.BaiViet;

public class BaiVietMapper implements RowMapper<BaiViet>{

	@Override
	public BaiViet mapRow(ResultSet rs) {
		BaiViet bv = new BaiViet();
		try {
			bv.setMaBaiViet(rs.getLong("mabaiviet"));
			bv.setTieuDe(rs.getString("tieude"));
			bv.setMaTaiKhoan(rs.getLong("mataikhoan"));
			bv.setMoTa("aaa");
			bv.setNoiDung("sssss");
			bv.setAnhNen("ss");
			bv.setHinhAnh("anh");
			bv.setLinkBaiViet("link");
			bv.setNgayDang("ngaydang");
			bv.setLuotXem(2);
			bv.setTrangThai(1);
			return bv;
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("Loi ne");
			return null;
		}
	}

}
