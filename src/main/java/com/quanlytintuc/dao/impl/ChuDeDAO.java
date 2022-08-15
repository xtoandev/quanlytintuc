package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.IChuDeDAO;
import com.quanlytintuc.mapper.ChuDeMapper;
import com.quanlytintuc.model.ChuDe;

public class ChuDeDAO extends AbstractDAO<ChuDe> implements IChuDeDAO{
	
	
	
	@Override
	public List<ChuDe> findAll() {
		String sql = "Select * From chude";
		return query(sql, new ChuDeMapper());
	}

	@Override
	public ChuDe findOne(Long machude) {
		String sql = "Select * From chude "
				+" where chude.machude = ?";
		List<ChuDe> bvs = query(sql, new ChuDeMapper(),machude);
		return bvs.isEmpty() ? null : bvs.get(0);
	}

	
	

	@Override
	public Long save(ChuDe chude) {
		String sql = "insert into chude(tenchude) " + 
				"values(?) ";
		
		return insert(sql,chude.getMaChuDe());
	}

	@Override
	public void update(ChuDe chude) {
		String sql = "update chude SET "
				+ " tenchude = ?"
				+ " WHERE machude = ? ;";
		update(sql,chude.getTenChuDe(),chude.getMaChuDe());
		
	}

	@Override
	public void delete(long id) {
		
		String sql = "DELETE FROM chude WHERE machude = ?";
		update(sql,id);
	}

	
	
}
