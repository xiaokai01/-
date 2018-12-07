package cn.itcast.estore.web;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;

import cn.itcast.estore.dao.UserDao;
import cn.itcast.estore.domain.User;
import cn.itcast.estore.service.UserServiceImpl;
import cn.itcast.estore.utils.DataSourceUtils;
import cn.itcast.estore.utils.Md5Utils;

/**
 * Servlet implementation class resisterservlet
 */
@WebServlet("/resisterservlet")
public class resisterservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private User User;
	private cn.itcast.estore.domain.User user;


       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public resisterservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserDao useri=new UserDao();
		try {
			useri.addUser(user);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		response.sendRedirect("page.jsp");


		
		
		
	}

}
