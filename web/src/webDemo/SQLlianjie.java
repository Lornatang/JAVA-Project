package webDemo;
import java.sql.*;

public class SQLlianjie {

	public static void main(String[] args) throws SQLException {
			try {
				// �������ݿ�����
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	 
				// ���ݿ������ַ���
				// jdbc:sqlserver             ����Э��
				// localhost                  ���ӵ�ַ
				// 1433                       ���Ӷ˿�
				// MyDatabase                 ���ӵ����ݿ�
				String url = "jdbc:sqlserver://localhost:1433;databaseName=News";
	 
				// �����ݿ�����
				// sa   �û���
				// 1    �ո����õ�����
				Connection connection = DriverManager.getConnection(url, "sa", "1");
	 
				// �ر����ݿ�����
				connection.close();
	 
				System.out.println("���ݿ����ӳɹ�");
			} catch (Exception e) {
				System.out.println("���ݿ�����ʧ��");
				e.printStackTrace();
			}
			beans b = new beans();
			b.findByNamePass("bb","11");
		}
	
}
