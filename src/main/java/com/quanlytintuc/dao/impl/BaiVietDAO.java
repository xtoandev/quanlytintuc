package com.quanlytintuc.dao.impl;

import java.util.List;

import com.quanlytintuc.dao.IBaiVietDAO;
import com.quanlytintuc.mapper.BaiVietMapper;
import com.quanlytintuc.model.BaiViet;
import com.quanlytintuc.paging.Pageble;

public class BaiVietDAO extends AbstractDAO<BaiViet> implements IBaiVietDAO{

	@Override
	public List<BaiViet> findByMaChuDe(Long machude) {
		String sql = "Select * From baiviet,chitietchude where chitietchude.mabaiviet = baiviet.mabaiviet and  chitietchude.machude = ?";
		return query(sql, new BaiVietMapper(),machude);
	}

	
	/*
	@Override
	public Long save(BaiViet baiviet) {	
		ResultSet resultSet = null;
		Long id = null;
		Connection connection = getConnection();
		PreparedStatement statement = null;
		String sql = "insert into baiviet (tieude ,mataikhoan ,mota ,noidung ,anhnen,ngaydang,trangthai)" + 
				"values(?,?,?,?,?,?,?) ";
		try {
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, baiviet.getTieuDe());
			statement.setLong(2, baiviet.getMaTaiKhoan());
			statement.setString(3, baiviet.getMoTa());
			statement.setString(4, baiviet.getNoiDung());
			statement.setString(5, baiviet.getAnhNen());
			statement.setString(6, baiviet.getNgayDang());
			statement.setInt(7, baiviet.getTrangThai());
			statement.executeUpdate();
			resultSet = statement.getGeneratedKeys();
			if(resultSet.next()) {
				id =  resultSet.getLong(1);
			}
			connection.commit();
			return id;
		} catch (SQLException e) {
			if(connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}
			e.printStackTrace();
			return null;
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
	}*/
	@Override
	public List<BaiViet> findAll(Pageble pageble) {
		String sql = "Select * From baiviet " 
				+ " LEFT JOIN taikhoan ON baiviet.mataikhoan = taikhoan.mataikhoan"
				+ " LEFT JOIN chude ON baiviet.machude = chude.machude ";
		//String sql = "Select * From baiviet limit ?, ?";
		if (pageble.getSorter() != null ) {
			sql = sql + "Order by "+ pageble.getSorter().getSortName()+" "+pageble.getSorter().getSortBy()+" ";
		}
		if(pageble.getOffset() != null && pageble.getLimit() != null) {
			sql = sql + " limit ?, ?";
			return query(sql ,new BaiVietMapper(),pageble.getOffset(),pageble.getLimit());
		}else {
			return query(sql ,new BaiVietMapper());
		}
		
	}
	


	@Override
	public Long save(BaiViet baiviet) {
		String sql = "insert into baiviet (tieude ,mataikhoan,machude ,mota ,noidung ,anhnen,ngaydang, trangthai)" + 
				"values(?,?,?,?,?,?,?,?) ";
		return insert(sql,baiviet.getTieuDe()
						 , baiviet.getMaTaiKhoan()
						 , baiviet.getMaChuDe()
						 , baiviet.getMoTa()
						 , baiviet.getNoiDung()
						 , baiviet.getAnhNen()
						 , baiviet.getNgayDang()
						 , baiviet.getTrangThai());
	}

	@Override
	public BaiViet findOne(Long mabaiviet) {
		String sql = "Select * From baiviet "
				+ " LEFT JOIN taikhoan ON baiviet.mataikhoan = taikhoan.mataikhoan"
				+ " LEFT JOIN chude ON baiviet.machude = chude.machude"
				+" where baiviet.mabaiviet = ?";
		List<BaiViet> bvs = query(sql, new BaiVietMapper(),mabaiviet);
		return bvs.isEmpty() ? null : bvs.get(0);
	}

	@Override
	public void update(BaiViet baiviet) {
		String sql = "update baiviet SET tieude = ?"
				+ ", mataikhoan = ?"
				+ ", machude = ?"
				+ ", mota = ?"
				+ ", noidung = ?"
				+ ", anhnen = ?"
				+ ", trangthai = ? " + 
				" WHERE mabaiviet = ? ;";
		update(sql, baiviet.getTieuDe()
						 , baiviet.getMaTaiKhoan()
						 , baiviet.getMaChuDe()
						 , baiviet.getMoTa()
						 , baiviet.getNoiDung()
						 , baiviet.getAnhNen()
						 , baiviet.getTrangThai()
						 , baiviet.getMaBaiViet());		
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM baiviet WHERE mabaiviet = ?";
		update(sql,id);
	}

	@Override
	public Integer getTotalItems() {
		String sql = "SELECT COUNT(*) FROM baiviet";
		return sumRowsData(sql);
	}


	

	
}
