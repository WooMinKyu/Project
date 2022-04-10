package member1;

import java.sql.*;
import java.util.*;

public class MemberDAO {
	
	//공통으로 접속할 경우 필요로하는 멤버변수 선언
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	private String sql="";
	
	//서버관련된 멤버변수들
	private String driver="oracle.jdbc.driver.OracleDriver";
	private String url="jdbc:oracle:thin:@localhost:1521:orcl";
	private String s_id="woo";
	private String s_pass="1234";
	
	//2)생성자를 통해서 자동으로 객체를 얻어올 수 있도록 연결
	public MemberDAO() {
		try {
			Class.forName(driver);
		}catch(Exception e) {
			System.out.println("DB연결 실패=>"+e);
		}
	}
	
	public boolean loginCheck(String id,String passwd) throws Exception{
		boolean check=false;
	
		try {
			conn = DriverManager.getConnection(url, s_id, s_pass);
			sql ="SELECT id,passwd FROM member WHERE id=? AND passwd=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
			check = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			rs.close(); pstmt.close(); conn.close();
		}
		return check;
	}
}
