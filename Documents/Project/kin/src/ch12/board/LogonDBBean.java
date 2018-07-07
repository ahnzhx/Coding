package ch12.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class LogonDBBean {
	private static LogonDBBean instance=new LogonDBBean();
	private LogonDBBean(){}//���깆�� �⑥��瑜� �몃����� 留��ㅼ� 紐삵����濡� 留���
	
	//LogonDBBean 媛�泥대�� 由ы�댄���� 硫�����
	public static LogonDBBean getInstance(){
		//�깃��ㅼ�� static�쇰� ���명�댁�� �� 硫������� static�쇰� ���명����.
		return instance;
	}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource)envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	public int insertMember(LogonDataBean member){
		Connection con=null;
		PreparedStatement ps=null;
		int check = 0;
		try {
			con=getConnection();
			ps=con.prepareStatement("INSERT INTO kin VALUES (?,?,?,?,NULL,?)");
			ps.setString(1, member.getName());
			ps.setString(2, member.getPasswd());
			ps.setString(3, member.getEmail());
			ps.setString(4, member.getTel());
			ps.setInt(5, 0);
			ps.executeUpdate();
			check=1;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(ps!=null) try {ps.close();} catch (SQLException e2) {}
			if(con!=null) try {con.close();} catch (SQLException e2) {}
		}
		return check;
	}
	
	public int confirmId(String email) throws SQLException{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int result=-1;
		try{
			con=getConnection();
			ps=con.prepareStatement("SELECT email FROM kin WHERE email=?");
			ps.setString(1, email);
			rs=ps.executeQuery();
			if(rs.next()) result= 1;//���대�� 議댁��
		}catch (Exception e) {return -1;}
		finally{
			if(rs!=null) try {rs.close();} catch (SQLException e2) {}
			if(ps!=null) try {ps.close();} catch (SQLException e2) {}
			if(con!=null) try {con.close();} catch (SQLException e2) {}
		}return result;
	}
	
	public int userCheck(String email,String passwd){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=-1;
		
		try {
			con=getConnection();
			String orgPass=passwd;
			String email2=email;
			System.out.println("email"+email);
			ps=con.prepareStatement("SELECT passwd FROM kin WHERE email=?");
			ps.setString(1, email2);
			rs=ps.executeQuery();
		
			if(rs.next()){
				String dbpasswd=rs.getString("passwd");
				if(dbpasswd.equals(orgPass)) x=1;
				else x=0;
			}else x=-1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try {rs.close();} catch (SQLException e2) {}
			if(ps!=null)try {ps.close();} catch (SQLException e2) {}
			if(con!=null)try {con.close();} catch (SQLException e2) {}
		}
		return x;
	}
	
	public LogonDataBean getMember(String email, String passwd){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		LogonDataBean member=null;
		try {
			con=getConnection();
			String orgPass=passwd;
			ps=con.prepareStatement("SELECT * FROM kin WHERE email=?");
			ps.setString(1, email);
			rs=ps.executeQuery();
			if(rs.next()){
				String dbpasswd=rs.getString("passwd");

					member=new LogonDataBean();
					member.setEmail(rs.getString("email"));
					member.setPasswd(rs.getString("passwd"));
					member.setName(rs.getString("name"));
					member.setTel(rs.getString("tel"));
		
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try {rs.close();} catch (SQLException e2) {};
			if(ps!=null)try {ps.close();} catch (SQLException e2) {};
			if(con!=null)try {con.close();} catch (SQLException e2) {};
		}
		return member;
	}
	
	public int updateMember(LogonDataBean member){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=-1;
		
		try {
			con=getConnection();
			ps=con.prepareStatement("UPDATE kin SET name=?,tel=?,passwd=? WHERE email=?");
			ps.setString(1, member.getName());
			ps.setString(2, member.getTel());
			ps.setString(3, member.getPasswd());
			ps.setString(4, member.getEmail());
			ps.executeUpdate();
			x=1;
			
		} catch (Exception e) {
		e.printStackTrace();
		}finally{
		if(rs!=null)try {rs.close();} catch (SQLException e2) {};
		if(ps!=null)try {ps.close();} catch (SQLException e2) {};
		if(con!=null)try {con.close();} catch (SQLException e2) {};
		}
		return x;
	}
	
	public int deleteMember(String email){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=-1;
		
		try {
			con=getConnection();
			ps=con.prepareStatement("delete from kin where email=?");
			ps.setString(1, email);
			ps.executeUpdate();
			x=1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try {rs.close();} catch (SQLException e2) {};
			if(ps!=null)try {ps.close();} catch (SQLException e2) {};
			if(con!=null)try {con.close();} catch (SQLException e2) {};
		}return x;
	}
	
	
	public int deleteMember2(String email){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=-1;
		
		try {
			con=getConnection();
			ps=con.prepareStatement("delete from kin where email=?");
			ps.setString(1, email);
			ps.executeUpdate();
			x=1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try {rs.close();} catch (SQLException e2) {};
			if(ps!=null)try {ps.close();} catch (SQLException e2) {};
			if(con!=null)try {con.close();} catch (SQLException e2) {};
		}return x;
	}
	
	
	public void getUser(String email){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String userName = "";
		LogonDataBean member=null;
			
		try {
			con=getConnection();
			String email2=email;
			ps=con.prepareStatement("SELECT name FROM kin WHERE email=?");
			ps.setString(1, email2);
			rs=ps.executeQuery();
			
			if(rs.next()) {
				member=new LogonDataBean();
				member.setName(rs.getString("name"));
			}
				
				
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try {rs.close();} catch (SQLException e2) {}
			if(ps!=null)try {ps.close();} catch (SQLException e2) {}
			if(con!=null)try {con.close();} catch (SQLException e2) {}
		}
		
	}
}
