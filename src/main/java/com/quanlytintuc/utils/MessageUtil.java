package com.quanlytintuc.utils;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

public class MessageUtil {
	public static void showMessage(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (request.getParameter("message") != null) {
			String messageResponse = "";
			String alert = "";
			String message = request.getParameter("message");
			if (message.equals("insert_success")) {
				messageResponse = "Thêm mới thành công";
				alert = "success";
			} else if (message.equals("update_success")) {
				messageResponse = "Cập nhật thành công";
				alert = "success";
			} else if (message.equals("delete_success")) {
				messageResponse = "Xóa thành công";
				alert = "success";
			} else if (message.equals("error_system")) {
				messageResponse = "Đã xảy ra lỗi";
				alert = "danger";
			}
			request.setAttribute("messageResponse", messageResponse);
			request.setAttribute("alert", alert);
		}
	}
	public static String showMessageLogin(String mess) {
		if(mess.equals("username_password_invalid")) {
			return "Sai email hoặc mật khẩu";
		}else if(mess.equals("not_permission")) {
			return "Không có quyền truy cập";
		}else {
			return "Chưa đăng nhập";
		}
			
	}
}
