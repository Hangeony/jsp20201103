package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DeatilServlet
 */
@WebServlet("/sample3/post/detail")
public class DeatilServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeatilServlet() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		Post post = getPost(id);

		String path="/WEB-INF/view/chap17/detail.jsp";
		request.setAttribute("post", post);
		request.getRequestDispatcher(path).forward(request, response);
	}

	private Post getPost(String id) {
//		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
//		jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "c##mydbms"; //mydb28
		String password = "admin"; // adminAdmin12
		String sql ="SELECT id, title, body FROM post WHERE id=?";

		Post post = null;
		Connection con = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {

//			Class.forName("oracle.jdbc.driver.OracleDriver");

//			Connection con = DriverManager.getConnection(url, user, password);
			con = DriverManager.getConnection(url, user, password);

//			Statement stmt = con.createStatement();
			stmt = con.prepareStatement(sql);
//			ResultSet rs = stmt.executeQuery(sql);
			stmt.setInt(1, Integer.parseInt(id));
			
			rs = stmt.executeQuery();
			
			if(rs.next()) {
			post = new Post();
			post.setId(rs.getInt(1));
			post.setTitle(rs.getString(2));
			post.setBody(rs.getString(3));
			}
		}catch (Exception e) {
				e.printStackTrace();
			}finally {
				// 6. close
				if (stmt != null) {
					try {
						stmt.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				if (con != null) {
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
			
			return post;
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}

