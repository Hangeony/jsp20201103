package chap14.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEmployeeServlet
 */
@WebServlet("/sample/employee/add")
public class AddEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String eno = request.getParameter("eno");
		String ename = request.getParameter("ename");
		String dno = request.getParameter("dno");
		
		String sql = "INSERT INTO employee (eno, ename, dno) "
					+" VALUES (?, ?, ?) ";
		
//		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		// jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms"; //mydb28
		String password = "admin"; // adminAdmin12
		
		try {
		//1.����̹� �ε�
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2.�������
		Connection con = DriverManager.getConnection(url, user, password);
		//3.statement����
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, Integer.parseInt(eno));
		pstmt.setString(2, ename);
		pstmt.setInt(3, Integer.parseInt(dno));
		//4.���� ����
		pstmt.execute();
		//5.��� ó��
		//6.statement, ����ݱ�
		pstmt.close();
		con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}