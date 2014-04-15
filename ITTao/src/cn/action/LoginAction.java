package cn.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction extends HttpServlet {

	/**   
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse resp){
		String requestURI=req.getRequestURI();
		if(requestURI.endsWith("x")){
			try {
				doLogin(req,resp);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse resp){
		this.doPost(req, resp);
	}
	
	
	private void doLogin(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		 req.setAttribute("content", "xxx");
		 
		 RequestDispatcher dispatcher = req.getRequestDispatcher("/login.jsp");
	     dispatcher.forward(req, resp);
	}

}
