package com.quanlytintuc.dao;

import java.util.List;

import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.paging.Pageble;

public interface IBaiVietDAO extends GenericDAO<BaiViet>{
	
	List<BaiViet> findAll(Pageble pageble);
	BaiViet findOne(Long mabaiviet);
	List<BaiViet> findByMaChuDe(Long machude);
	Long save(BaiViet baiviet);
	void update(BaiViet baiviet);
	void delete(long id);
	Integer getTotalItems();
	List<BaiViet> findNew();
	Integer getTotalComment(Long mabaiviet);
}
