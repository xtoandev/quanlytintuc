package com.quanlytintuc.dao.impl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.quanlytintuc.dao.GenericDAO;
import com.quanlytintuc.mapper.RowMapper;

public class AbstractDAO<T> implements GenericDAO<T> {
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/quanlytintuc";
			String user = "root";
			String password = "";
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException | SQLException e) {
			return null;		
		}
	}

	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<>();
		Connection conn = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		
		try {
			conn = getConnection();
			statement = conn.prepareStatement(sql);
			Object paramenters;
			Object statment;
			//set paramenter
			setParamenter(statement, parameters);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				results.add(rowMapper.mapRow(resultSet));
			}
			return results;
		}catch (SQLException e) {
			return null;
		}finally {
			try {
				conn.close();
				statement.close();
				resultSet.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void setParamenter(PreparedStatement statement , Object... parameters) {
		try {
			for (int i = 0;i < parameters.length;i++) {
				Object parameter = parameters[i];
				int index = i+ 1;
				if(parameter instanceof Long) {
					statement.setLong(index, (Long) parameter);
				} else if (parameter instanceof String) {
					statement.setString(index, (String) parameter);
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
}
