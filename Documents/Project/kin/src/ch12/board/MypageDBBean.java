package ch12.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class MypageDBBean {
	
	
	private static MypageDBBean instance=new MypageDBBean();
	private MypageDBBean(){}

	public static MypageDBBean getInstance(){
		return instance;
	}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource) envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	



	

	public MypageDataBean[] getYourInfo(String email) {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			String sql="select subject, reg_date, name, email,tel,money from uv_mypage where email=?";
			ps=con.prepareStatement(sql);
			ps.setString(1,email);
			rs=ps.executeQuery();
			MypageDataBean[] arr = makeArray(rs);
			return arr;
		} catch (Exception e) {
			return null;
		} finally {
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try {ps.close();} catch (Exception e2) {}
		}
	}
	// End SelectAll...
	

	public MypageDataBean[] makeArray(ResultSet rs) throws SQLException { //ReultSet is Array.. ArrayType�쇰�!
		Vector<MypageDataBean> v = new Vector<MypageDataBean>();
		while(rs.next()) {
			System.out.println("이 사람의 글 : " + rs.getString("name") + "\n\n");
			String Subject=rs.getString("subject");
			String Reg_date=rs.getString("reg_date");
			String Email=rs.getString("email");
			String Name=rs.getString("name");
			String Tel=rs.getString("tel");
			int Money=rs.getInt("money");
			MypageDataBean mdb=new MypageDataBean(Subject,Reg_date,Email,Name,Tel,Money);
			v.add(mdb);
		}
		MypageDataBean comArr[] = new MypageDataBean[v.size()];
		v.copyInto(comArr);
		return comArr;
	}
	
}
