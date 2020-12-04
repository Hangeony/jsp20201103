package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletContext;
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
    private List<Post> list;
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
		String sql ="SELECT title, body FROM post WHERE id = " +id;
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		// jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
		//String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		
		String user = "c##mydbms"; //mydb28
		String password = "admin"; // adminAdmin12

		Post post = null;
		try {

		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection con = DriverManager.getConnection(url, user, password);

		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
		post = new Post();
		post.setTitle(rs.getString(1));
		post.setBody(rs.getString(2));
		}
		stmt.close();
		con.close();
		}catch (Exception e) {
			e.printStackTrace();
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

