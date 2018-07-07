package ch12.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class TagDBBean {
	private static TagDBBean instance=new TagDBBean();
	public static TagDBBean getInstance(){return instance;}
	private TagDBBean(){}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource) envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	public List<BoardDataBean> bringTag(){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		List<BoardDataBean> tagList=null;
		
		String sql="select tag from board";
		try {
			con=getConnection();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			tagList=new ArrayList<BoardDataBean>();
			while(rs.next()){
				BoardDataBean boardDataBean=new BoardDataBean();
				boardDataBean.setTag(rs.getString("tag"));
				System.out.println(boardDataBean.getTag());
				tagList.add(boardDataBean);
				//System.out.println(tagList);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}
		return tagList; 
	}
	
	/*public int countTag(BoardDataBean boardDataBean){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql="select count(tag) from board where FIND_IN_SET(?,tag)";
		int [] countList;
		try {
			con=getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1, boardDataBean.getTag());
			rs=ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}
		return ;
	}*/
}
