package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.IBaiVietDAO;
import com.quanlytintuc.mapper.BaiVietMapper;
import com.quanlytintuc.mapper.ChuDeMapper;
import com.quanlytintuc.model.BaiViet;

public class BaiVietDAO extends AbstractDAO<BaiViet> implements IBaiVietDAO{

	@Override
	public List<BaiViet> findByMaChuDe(Long machude) {
		String sql = "Select * From baiviet,chitietchude where chitietchude.mabaiviet = baiviet.mabaiviet and  chitietchude.machude = ?";
		return query(sql, new BaiVietMapper(),machude);
	}

	@Override
	public List<BaiViet> findAll() {
		String sql = "Select * From baiviet";
		return query(sql ,new BaiVietMapper());
	}

}
