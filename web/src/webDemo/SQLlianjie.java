package webDemo;
import java.sql.*;

public class SQLlianjie {

	public static void main(String[] args) throws SQLException {
			try {
				// 加载数据库驱动
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	 
				// 数据库连接字符串
				// jdbc:sqlserver             连接协议
				// localhost                  连接地址
				// 1433                       连接端口
				// MyDatabase                 连接的数据库
				String url = "jdbc:sqlserver://localhost:1433;databaseName=News";
	 
				// 打开数据库连接
				// sa   用户名
				// 1    刚刚设置的密码
				Connection connection = DriverManager.getConnection(url, "sa", "1");
	 
				// 关闭数据库连接
				connection.close();
	 
				System.out.println("数据库连接成功");
			} catch (Exception e) {
				System.out.println("数据库连接失败");
				e.printStackTrace();
			}
			beans b = new beans();
			b.findByNamePass("bb","11");
		}
	
}
