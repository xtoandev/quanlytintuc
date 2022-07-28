package com.quanlytintuc.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import com.quanlytintuc.dao.IBaiVietDAO;
import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.service.IBaiVietService;

public class BaiVietService implements IBaiVietService {

	@Inject
	private IBaiVietDAO baivietDAO;
	
	@Override
	public List<BaiViet> findByMaChuDe(Long machude) {
		return baivietDAO.findByMaChuDe(machude);
	}

	@Override
	public List<BaiViet> findAll() {
		return baivietDAO.findAll();
	}

	@Override
	public BaiViet save(BaiViet baiviet) {
		String dateNow = (java.time.LocalDate.now()).toString();
		baiviet.setNgayDang(dateNow);
		baiviet.setLuotXem(0);
		Long newID = baivietDAO.save(baiviet);
		return baivietDAO.findOne(newID);
	}

	@Override
	public BaiViet update(BaiViet baiviet) {
		BaiViet bvCu = baivietDAO.findOne(baiviet.getMaBaiViet());
		baiviet.setNgayDang(bvCu.getNgayDang());
		baivietDAO.update(baiviet);
		return baivietDAO.findOne(baiviet.getMaBaiViet());
	}

	@Override
	public void delete(long[] ids) {
		for(long id : ids) {
			baivietDAO.delete(id);
		}
		
	}

}
