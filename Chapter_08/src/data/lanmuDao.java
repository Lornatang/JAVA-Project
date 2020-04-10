package data;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class lanmuDao {
	private Connection con = null;
	private Statement st = null;
	private Statement ps =null;
	private ResultSet rs = null;
	
	public final static String driver="com.mysql.jdbc.Driver";
	public final static String url="jdbc:mysql://localhost:3306/news";
	public final static String dbName = "root";
	public final static String dbpass = "root";
	public void getConn(){
		try {
			class.forName(driver);
			con = DriverManager.getConnection(url,dbName,dbpass);
		} catch (ClassNotFoundException e) {
			// TODO: handle exception
			//e.printStackTrace();
			System.out.println("驱动类未找到"+e.toString());
		}catch(SQLException e){
		//	e.printStackTrace();
		System.out.println("连接对象创建类失败"+e.toString());
		}
	}
	
	
	public boolean findByName(String name) {
		boolean flag = false;
		String sql = "select * from lanmu where name = ？";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			if(rs.next()){
				System.out.println("栏目存在");
				flag = true;
			}else{
				System.out.println("栏目不存在");
				flag = false;
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return flag;
	}
	
	public int insertlanmu(String name,String creator,String creatDate){
		
		int i =0;
		String sql  = "insert into lanmu(name,creator,creatDate)values(?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, creator);
			ps.setString(3, creatDate);
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return i;
	}
	public ResultSet findAll(){
		String sql  ="select * from lanmu ";
		try {
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
	
	public ResultSet findName(String name){
		String sql = "select * from lanmu where name =?";
		try {
			ps = con.createStatement();
			ps.setString(1, name);
			rs = ps.executeQuery(sql);
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return rs;
	}
}