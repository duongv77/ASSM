package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.VideoDAO;
import com.entity.User;

/**
 * Servlet implementation class AdminBaiViet
 */
@WebServlet("/admin/baiviet")
public class AdminBaiViet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private VideoDAO videoDAO;
    public AdminBaiViet() {
        super();
        this.videoDAO = new VideoDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user =(User) request.getSession().getAttribute("user");
		request.setAttribute("listVideo", this.videoDAO.fullVideo());
		request.setAttribute("user", user);
		request.getRequestDispatcher("/views/admin/adminbaiviet.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
