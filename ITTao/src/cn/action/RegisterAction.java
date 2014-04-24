package cn.action;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dao.UserDao;
import cn.model.User;

public class RegisterAction extends HttpServlet {

	/**   
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
	     try {
			doRegister(req,resp);
			System.out.println("xxx");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		this.doPost(req, resp);
	}
	
	private void doRegister(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException, ClassNotFoundException, SQLException{
		 String username=req.getParameter("username");
		 String password=req.getParameter("password");
		 String cpassword=req.getParameter("cpassword");
		 String reurl="/ITTao/regist.jsp";
		 if(username!=null&&username.length()>0
				 &&password!=null&&password.length()>0
				 &&cpassword!=null&&cpassword.length()>0){
			 if(cpassword.equals(password)){
				 User u=new User();
				 u.setEmail(username);
				 u.setPassword(password);
				if(null!= new UserDao().add(u)){
					reurl="/ITTao/login.jsp";
				}
			 }
		 }
		 
		 resp.sendRedirect(reurl);
	}
	
}
