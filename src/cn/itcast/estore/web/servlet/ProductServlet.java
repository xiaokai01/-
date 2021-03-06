package cn.itcast.estore.web.servlet;



import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import cn.itcast.estore.domain.Product;
import cn.itcast.estore.factory.ProductServiceFactory;
import cn.itcast.estore.service.ProductService;



public class ProductServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("method");
		System.out.println(method);
		if ("findById".equals(method)) {
			// 根据id查找商品
			findById(request, response);
		} else if ("findAll".equals(method) || method == null) {
			// 查找全部商品
			findAll(request, response);
		}
	}

	// 根据id查找商品
	public void findById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// 1.得到要查询的商品的id
		String id = request.getParameter("id");

		// 2.调用service中查询方法
		try {
			ProductService service = ProductServiceFactory.getInstance();
			Product p = service.findById(id);

			request.setAttribute("p", p);

			request.getRequestDispatcher("/productInfo.jsp").forward(request,
					response);

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// 查找所有商品
	public void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 1.查询所有商品
			ProductService service = ProductServiceFactory.getInstance();
			List<Product> ps = service.findAll();

			// 2.跳转到page.jsp页面
			request.setAttribute("ps", ps);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.getRequestDispatcher("/page.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
