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

public class CommentDBBean {
	private static CommentDBBean instance=new CommentDBBean();
	public static CommentDBBean getInstance(){return instance;}
	private CommentDBBean(){}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource) envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	
	//ÄÚ¸àÆ®ÀÔ·Â
	public int insertComment(CommentDataBean article){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		int number=0;
		String sql="";
		try{
			con=getConnection();
			sql="INSERT INTO comment VALUES(NULL,?,?,?,?,?);";
			ps=con.prepareStatement(sql);
			ps.setInt(1, article.getBoardRefNum());
			ps.setString(2, article.getContent());
			ps.setString(3, article.getWriter());
			ps.setString(4, article.getWriter_email());
			ps.setTimestamp(5, article.getReg_date());
			ps.executeUpdate();
			x=1;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}
		return x;
	}
	
	
	//´ñ±Ûº¸±â
	public List<CommentDataBean> getCmtView(int point){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<CommentDataBean> articleList=null;
		String sql="SELECT * FROM comment WHERE boardRefNum=?";
		try {
			con=getConnection();
			ps=con.prepareStatement(sql);
			ps.setInt(1, point);
			rs=ps.executeQuery();
			if(rs.next()){
				articleList=new ArrayList<CommentDataBean>();
				do{
					CommentDataBean article=new CommentDataBean();
					article.setNum(rs.getInt("num"));
					article.setBoardRefNum(rs.getInt("boardRefNum"));
					article.setContent(rs.getString("content"));
					article.setWriter(rs.getString("writer"));
					article.setWriter_email(rs.getString("writer_Email"));					
					article.setReg_date(rs.getTimestamp("reg_date"));
					articleList.add(article);
				}while(rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return articleList;
	}	
	
	//´ñ±Û ¼ö °Ë»ç
	public int getComentCounting(int point){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("select count(*) from comment WHERE boardRefNum=?");
			ps.setInt(1,point);
			rs=ps.executeQuery();
			
			if(rs.next())x=rs.getInt(1);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return x;
	}	
	

}
