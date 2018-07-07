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

public class BoardDBBean {
	private static BoardDBBean instance=new BoardDBBean();
	public static BoardDBBean getInstance(){return instance;}
	private BoardDBBean(){}
	
	private Connection getConnection() throws Exception{
		Context initCtx=new InitialContext();
		Context envCtx=(Context) initCtx.lookup("java:comp/env");
		DataSource ds=(DataSource) envCtx.lookup("jdbc/mysql");
		return ds.getConnection();
	}
	
	public int insertArticle(BoardDataBean article){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		int number=0;
		String sql="";
		
		int num=article.getNum();
		int ref=article.getRef();
		int re_step=article.getRe_step();
		int re_level=article.getRe_level();
		
		try{
			con=getConnection();
			ps=con.prepareStatement("select max(num) from board");
			rs=ps.executeQuery();
			
			if(rs.next()) number=rs.getInt(1)+1;
			else number=1;
			
			if(num!=0){
				sql="update board set re_step=re_step+1 where ref=? and re_step>?";
				ps=con.prepareStatement(sql);
				ps.setInt(1, ref);
				ps.setInt(2, re_step);
				ps.executeUpdate();
				re_step+=1;
				re_level+=1;
			}else{
				ref=number;
				re_step=0;
				re_level=0;
			}
			
			sql="insert into board(writer,writerEmail,subject,content,reg_date,";
			sql+="ip,ref,re_step,re_level,tag) values(?,?,?,?,?,?,?,?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1, article.getWriter());
			ps.setString(2, article.getWriterEmail());
			ps.setString(3, article.getSubject());
			ps.setString(4, article.getContent());
			ps.setTimestamp(5, article.getReg_date());
			ps.setString(6, article.getIp());
			ps.setInt(7, ref);
			ps.setInt(8, re_step);
			ps.setInt(9, re_level);
			ps.setString(10, article.getTag());
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
	
	public int getArticleCount(){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("select count(*) from board");
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
	
	public List<BoardDataBean> getArticles(int start, int end){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BoardDataBean> articleList=null;
		try {
			con=getConnection();
			ps=con.prepareStatement(
					"select * from board where re_step=0 order by ref desc,re_step asc limit ?,? ");
			ps.setInt(1, start-1);
			ps.setInt(2, end);
			rs=ps.executeQuery();
			
			if(rs.next()){
				articleList=new ArrayList<BoardDataBean>(end);
				do{
					BoardDataBean article=new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setId_num(rs.getInt("id_num"));
					article.setWriter(rs.getString("writer"));
					article.setWriterEmail(rs.getString("writerEmail"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					article.setTag(rs.getString("tag"));
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
	
	public List<BoardDataBean> getView(int point){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BoardDataBean> articleList=null;
		String sql="SELECT * FROM board WHERE num=?";
		try {
			con=getConnection();
			ps=con.prepareStatement(sql);
			ps.setInt(1, point);
			rs=ps.executeQuery();
			if(rs.next()){
				articleList=new ArrayList<BoardDataBean>();
				do{
					BoardDataBean article=new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setId_num(rs.getInt("id_num"));
					article.setWriter(rs.getString("writer"));
					article.setWriterEmail(rs.getString("writerEmail"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					//article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					article.setTag(rs.getString("tag"));
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

	
	public List<BoardDataBean> getView2(int point){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BoardDataBean> articleList2=null;
		String sql2="SELECT * FROM board WHERE ref=? and re_step>0 ORDER BY selCheck DESC, re_step DESC";
		try {
			con=getConnection();
			ps=con.prepareStatement(sql2);
			ps.setInt(1, point);
			rs=ps.executeQuery();
			if(rs.next()){
				articleList2=new ArrayList<BoardDataBean>();
				do{
					BoardDataBean article=new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setId_num(rs.getInt("id_num"));
					article.setWriter(rs.getString("writer"));
					article.setWriterEmail(rs.getString("writerEmail"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					//article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					article.setTag(rs.getString("tag"));
					articleList2.add(article);
				}while(rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return articleList2;
	}

	
	public List<MypageDataBean> getInfo(String email){
		String email2=email;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<MypageDataBean> infoList=null;
		MypageDataBean mdb=new MypageDataBean();
		String sql="select name, email, tel, money from kin where email=?";
		
		try {
			con=getConnection();
			ps=con.prepareStatement(sql);
			ps.setString(1,email2);
			rs=ps.executeQuery();
			if(rs.next()){
				infoList=new ArrayList<MypageDataBean>();
				do{
					mdb.setEmail(rs.getString("email"));
					mdb.setName(rs.getString("name"));
					mdb.setTel(rs.getString("tel"));
					mdb.setMoney(rs.getInt("money"));
					infoList.add(mdb);
				}while(rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();	
		}finally{
			if(ps!=null)try {ps.close();} catch (Exception e2) {}
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}
		return infoList;		
	}
	
	
	//질문갯수 출력
	public int getArticleCount2(String name){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("select count(*) from board where re_step = 0 && writer=?");
			ps.setString(1,name);
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
	
	//답변갯수 출력
	public int getArticleCountAnswer(String name){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("select count(*) from board where re_step >= 1 && writer=?");
			ps.setString(1,name);
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
		
	
	//질문만 출력
	public List<BoardDataBean> getInfo2(String name){
		String name2=name;
		System.out.println("이 정보가 출력됨 " + name + "\n\n");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BoardDataBean> infoList2=null;
		String sql2="select * from board where re_step = 0 && writer=?";
		try {
			con=getConnection();
			ps=con.prepareStatement(sql2);
			ps.setString(1,name2);
			rs=ps.executeQuery();
			if(rs.next()){
				infoList2=new ArrayList<BoardDataBean>();
				do{
					BoardDataBean article=new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setId_num(rs.getInt("id_num"));
					article.setWriter(rs.getString("writer"));
					article.setWriterEmail(rs.getString("writerEmail"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					//article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					article.setTag(rs.getString("tag"));
					article.setSelCheck(rs.getInt("selCheck"));
					article.setBetMoney(rs.getInt("betMoney"));
					infoList2.add(article);
				}while(rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();	
		}finally{
			if(ps!=null)try {ps.close();} catch (Exception e2) {}
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}
		return infoList2;		
	}
	
	
	//답변만
	public List<BoardDataBean> getInfoAnswer(String name){
		String name2=name;
		//System.out.println("이 정보가 출력됨 " + name + "\n\n");
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		List<BoardDataBean> infoList2=null;
		String sql2="select * from board where re_step >= 1 && writer=?";
		try {
			con=getConnection();
			ps=con.prepareStatement(sql2);
			ps.setString(1,name2);
			rs=ps.executeQuery();
			if(rs.next()){
				infoList2=new ArrayList<BoardDataBean>();
				do{
					BoardDataBean article=new BoardDataBean();
					article.setNum(rs.getInt("num"));
					article.setId_num(rs.getInt("id_num"));
					article.setWriter(rs.getString("writer"));
					article.setWriterEmail(rs.getString("writerEmail"));
					article.setSubject(rs.getString("subject"));
					article.setContent(rs.getString("content"));
					//article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));
					article.setTag(rs.getString("tag"));
					article.setSelCheck(rs.getInt("selCheck"));
					article.setBetMoney(rs.getInt("betMoney"));
					infoList2.add(article);
				}while(rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();	
		}finally{
			if(ps!=null)try {ps.close();} catch (Exception e2) {}
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}
		return infoList2;		
	}
	
	public BoardDataBean updateGetArticle(int num){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		BoardDataBean article=null;
		
		try {
			con=getConnection();
			ps=con.prepareStatement("select * from board where num=?");
			ps.setInt(1, num);
			rs=ps.executeQuery();
			
			if(rs.next()){
				article=new BoardDataBean();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setWriterEmail(rs.getString("writerEmail"));
				article.setSubject(rs.getString("subject"));
				//article.setPasswd(rs.getString("passwd"));
				article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
				article.setTag(rs.getString("tag"));
				article.setSelCheck(rs.getInt("selCheck"));
				article.setBetMoney(rs.getInt("betMoney"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
			
		}return article;
	}
	
	public int updateArticle(BoardDataBean article){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=-1;
		try {
			System.out.println("ref출력 : " + article.getRef());
			con=getConnection();
			ps=con.prepareStatement(
					"select * from board where ref=?");
			ps.setInt(1, article.getRef());
			rs=ps.executeQuery();
			
			if(rs.next()){
					String sql="update board set subject=?,";
					sql+="content=? where num=?";
					ps=con.prepareStatement(sql);
					ps.setString(1, article.getSubject());
					ps.setString(2, article.getContent());
					ps.setInt(3, article.getNum());
					ps.executeUpdate();
					x=1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
			
		}return x;
	}
	
	public int deleteArticle(int num){
		Connection con=null;
		PreparedStatement ps=null;
		int x=-1;
		try {
			con=getConnection();
			ps=con.prepareStatement("delete from board where num=?");
			ps.setInt(1, num);
			ps.executeUpdate();
			x=1;
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return x;
	}
	
	
	//작성자의 답변 수 체크, 1이면 답변 못달게
	public int getAnswerCheck(String writer, int num){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("select count(*) from board WHERE writer=? and re_step>=1 and ref=?");
			ps.setString(1, writer);
			ps.setInt(2, num);
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
	
	//
	public int getAnswerHit(int num){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("SELECT COUNT(*) FROM board WHERE re_step>=1 && ref=?");
			ps.setInt(1, num);
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
	
	//Hit수 증가
	public int updateHit(int num) {
		Connection con=null;
		PreparedStatement ps=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("UPDATE board SET readcount=readcount+1 WHERE num=?");
			ps.setInt(1, num);
			ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return x;
	}
	
	
	//추천수 증가
	public int insertLikeIt(LikeItDataBean likeit){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int counting=0;
		int check = 0;
		try {
			con=getConnection();
			ps=con.prepareStatement("SELECT count(*) FROM likeit WHERE refNum=? && likeEmail=?");
			ps.setInt(1, likeit.getRefNum());
			ps.setString(2, likeit.getLikeEmail());
			rs=ps.executeQuery();
			if(rs.next())
				counting=rs.getInt(1);
			
			if(counting==0) {
				ps=con.prepareStatement("INSERT INTO likeit VALUES (NULL,?,?,1,?,?)");
				ps.setInt(1, likeit.getRefNum());
				ps.setInt(2, likeit.getBoardNum());
				ps.setString(3, likeit.getLikeEmail());
				ps.setString(4, likeit.getLikeName());
				ps.executeUpdate();
				check=1;
			}else {
				ps=con.prepareStatement("DELETE FROM likeit WHERE refNum=? && likeEmail=?;");
				ps.setInt(1, likeit.getRefNum());
				ps.setString(2, likeit.getLikeEmail());
				ps.executeUpdate();
				check=2;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null) try {ps.close();} catch (SQLException e2) {}
			if(con!=null) try {con.close();} catch (SQLException e2) {}
		}
		return check;
	}
	
	//추천했는지 안했는지?
	public int getLikeCheck(int point,String email){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("SELECT count(*) FROM likeit WHERE refNum=? && likeEmail=?");
			ps.setInt(1,point);
			ps.setString(2,email);
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
	
	
	//추천수보기
	public int getLikeitCount(int num,String type) {
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			con=getConnection();
			if(type.equals("refNum")) {
				ps=con.prepareStatement("SELECT count(*) FROM likeit WHERE refNum=?");
				ps.setInt(1, num);
				rs=ps.executeQuery();
				if(rs.next())x=rs.getInt(1);
			}else if(type.equals("boardNum")) {
				ps=con.prepareStatement("SELECT count(*) FROM likeit WHERE boardNum=?");
				ps.setInt(1, num);
				rs=ps.executeQuery();
				if(rs.next())x=rs.getInt(1);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return x;
	}	
	
	
	//댓글 수 검사
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
	
	
	//채택하기
	public int selectAnswer(int num,int num2) {
		Connection con=null;
		PreparedStatement ps=null;
		int x=0;
		try{
			con=getConnection();
			ps=con.prepareStatement("UPDATE board SET selCheck=1 WHERE num=?");
			ps.setInt(1, num);
			ps.executeUpdate();
			
			ps=con.prepareStatement("UPDATE board SET selCheck=1 WHERE num=?");
			ps.setInt(1, num2);
			ps.executeUpdate();			
			x=1;
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return x;
	}
	
	//채택체크
	public int getSelCheck(int rNum,String type){
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int x=0;
		try{
			if(type.equals("num")) {
				con=getConnection();
				ps=con.prepareStatement("select count(*) from board WHERE num=? && selCheck=1");
				ps.setInt(1,rNum);
				rs=ps.executeQuery();
			}else if(type.equals("ref")) {
				con=getConnection();
				ps=con.prepareStatement("select count(*) from board WHERE ref=? && selCheck=1");
				ps.setInt(1,rNum);
				rs=ps.executeQuery();
			}
			if(rs.next())x=rs.getInt(1);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)try{rs.close();}catch(SQLException e){}
			if(ps!=null)try{ps.close();}catch(SQLException e){}
			if(con!=null)try{con.close();}catch(SQLException e){}
		}return x;
	}	
	
	
	
	//내 답변 수 검사
		public int getMyAnswerCount(String myEmail,String type){
			Connection con=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			int x=0;
			try{
				con=getConnection();
				if(type.equals("qustion")) {
					ps=con.prepareStatement("select count(*) from board WHERE re_step=0 && writerEmail=?");
					ps.setString(1,myEmail);
					rs=ps.executeQuery();
				}else {
					ps=con.prepareStatement("select count(*) from board WHERE re_step>=1 && writerEmail=?");
					ps.setString(1,myEmail);
					rs=ps.executeQuery();
				}
				
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
