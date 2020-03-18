package webDemo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class beans {
	private  Connection conn = null;
	private PreparedStatement ps;
	private ResultSet rs;
	String na;
	String pw;

public void findByNamePass(String userName,String Password) throws SQLException{
	String sql = "Select * from userID where userName = ? and password = ?" ;
	ps = conn.prepareStatement(sql);
	//ps.setString(1,userName);
	//ps.setString(2, Password);
	rs = ps.executeQuery();
    // 保存结果集到Java变量中
    while(rs.next()) {
        na = rs.getString(userName);
        pw =rs.getString(Password);
        // 输出查询结果
      //  System.out.println("\t"+rs+"\t"+pw+"\t");
    }

}

}