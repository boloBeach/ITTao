package cn.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.UserDao;
import cn.model.User;

public class LoginAction extends HttpServlet {

	/**   
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		try {
			doLogin(req,resp);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		this.doPost(req, resp);
	}
	
	
	private void doLogin(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException, ClassNotFoundException, SQLException{
		String reurl="/ITTao/login.jsp";
		
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		User u=new User();
		u.setEmail(username);
		u.setPassword(password);
		if(null!=new UserDao().login(u)){
			reurl="/ITTao/index.jsp";
			System.out.println(reurl);
			req.getSession().setAttribute("username", u.getEmail());
			req.getSession().setAttribute("password", u.getPassword());
		}
		resp.sendRedirect(reurl);
	}

}
