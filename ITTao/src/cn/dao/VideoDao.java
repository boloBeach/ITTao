package cn.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

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
		return DB.ExecuteQuery(" select * from t_video where id="+id, null);
	}
	
	public List<HashMap<String,Object>> QueryVideo(String  id,int top) throws ClassNotFoundException, SQLException{
		return DB.ExecuteQuery(" select * from t_video where parentId="+id+ " limit 0,"+top, null);
	}
	
	public List<HashMap<String,Object>> QueryById(String id) throws ClassNotFoundException, SQLException{
		return DB.ExecuteQuery(" select * from t_video where id="+id, null);
	}
}
