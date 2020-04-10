package data;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
	private Connection con = null;
	private Statement st = null;
	private PreparedStatement ps =null;
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
	
	public boolean findNamepass(String name) {
		boolean flag = false;
		String sql = "select * from user where name = ？";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			rs = ps.executeQuery();
			if(rs.next()){
				System.out.println("用户存在");
				flag = true;
			}else{
				System.out.println("用户不存在");
				flag = false;
			}
			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return flag;
	}
	
	public int insertUser(String name,String mima,String sex,String zhuanye,String xingqu,String jianjie,String photo){
		int i = 0;
		String sql ="insert into user value(?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(1, mima);
			ps.setString(1, sex);
			ps.setString(1, zhuanye);
			ps.setString(1, xingqu);
			ps.setString(1, jianjie);
			ps.setString(1, photo);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return i;
	}
}
