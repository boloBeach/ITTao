package cn.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import cn.model.User;

public class UserDao {
	
	public  User login(User u) throws ClassNotFoundException, SQLException{
		List<HashMap<String,Object>> list=DB.ExecuteQuery("select * from t_user where email =? and password =? ", new Object[]{u.getEmail(),u.getPassword()});
		if(list!=null&&list.size()==1){
			return u;
		}
		return null;
	}
	
	public User add(User u) throws ClassNotFoundException, SQLException{
	List<HashMap<String,Object>> list=DB.ExecuteQuery("select * from t_user where email=?", new Object[]{u.getEmail()});
	if(list==null||list.size()==0){
		int i=DB.executeUpdate("insert into t_user (email,password) values (?,?) ",new Object[]{u.getEmail(),u.getPassword()} );
		 if(i==1){
			 return u;
		 }
	}
	  return null;
	}
	


}
