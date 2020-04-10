package data;

public class test {
	public static void main(String[] args) {
		UserDao ud = new UserDao();
		ud.getConn();
		ud.findNamepass("aa");
	}
}
