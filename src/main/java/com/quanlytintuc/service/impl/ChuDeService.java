package com.quanlytintuc.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.IChuDeDAO;
import com.quanlytintuc.model.ChuDe;
import com.quanlytintuc.service.IChuDeService;

public class ChuDeService implements IChuDeService {
	@Inject
	private IChuDeDAO chudeDAO;
	/*
	public ChuDeService() {
		chudeDAO = new ChuDeDAO();
	}
	*/
	@Override
	public List<ChuDe> findAll() {
		// TODO Auto-generated method stub
		return chudeDAO.findAll();
	}
	@Override
	public ChuDe findOne(Long machude) {
		return chudeDAO.findOne(machude);
	}
	@Override
	public ChuDe save(ChuDe chude) {
		Long newID = chudeDAO.save(chude);
		return chudeDAO.findOne(newID);
	}
	@Override
	public ChuDe update(ChuDe chude) {
		chudeDAO.update(chude);
		return chudeDAO.findOne(chude.getMaChuDe());
	}
	@Override
	public void delete(long[] ids) {
		
		for(long id : ids) {
			chudeDAO.delete(id);
		}
	}
	
	//Java Servlet Wed

}
