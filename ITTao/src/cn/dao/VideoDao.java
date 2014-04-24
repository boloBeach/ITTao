package cn.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import cn.model.Md5;

public class VideoDao {
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException  {
		
	}
	public List<HashMap<String,Object>> QueryVideo(String  id) throws ClassNotFoundException, SQLException{
		return DB.ExecuteQuery(" select * from t_video where parentId="+id, null);
	}
	
	public List<HashMap<String,Object>> QueryVideo(String  id,int startid,int size) throws ClassNotFoundException, SQLException{
		return DB.ExecuteQuery(" select * from t_video where parentId="+id+" limit "+startid+","+size, null);
	}
	
	public List<HashMap<String,Object>> query(String id) throws ClassNotFoundException, SQLException{
		DB.executeUpdate("update t_video set clickcount=clickcount+1 where id="+id);
		return DB.ExecuteQuery(" select * from t_video where id="+id, null);
	}
	
	public List<HashMap<String,Object>> QueryVideo(String  id,int top) throws ClassNotFoundException, SQLException{
		return DB.ExecuteQuery(" select * from t_video where parentId="+id+ " limit 0,"+top, null);
	}
	
	public List<HashMap<String,Object>> QueryById(String id) throws ClassNotFoundException, SQLException{
		return DB.ExecuteQuery(" select * from t_video where id="+id, null);
	}
	//sign
	public boolean isView(String id,String username,String password) throws ClassNotFoundException, SQLException{
		
		System.out.println(id);
		List<HashMap<String,Object>> listuser=DB.ExecuteQuery(String.format("select * from t_user where email='%s' and password='%s' ",username,password), null);
		if(!(listuser.size()==1&&listuser.get(0).get("email").equals(username))){
			return false;
		}
		List<HashMap<String,Object>> listvideo=DB.ExecuteQuery("select * from t_video where id="+id, null);
		System.out.println(listvideo.get(0).get("isfree"));
		if(listvideo==null||listvideo.size()==0){
			return false;
		}
		if(Integer.parseInt(listvideo.get(0).get("isfree").toString())==1){
			return true;
		}
		List<HashMap<String,Object>> listmoney=DB.ExecuteQuery(String.format("select * from t_orders where useremail='%s' and videoid=%s and pay=1",username,id), null);
		if(listmoney!=null&&listmoney.size()==1){
			return true;
		}
		return false;
	}
}
