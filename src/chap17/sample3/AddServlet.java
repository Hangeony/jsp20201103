package chap17.sample3;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/sample3/post/add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
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
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if(title != null && body != null && !title.isEmpty() && !body.isEmpty()) {
			Post post =new Post();
			post.setTitle(title);
			post.setBody(body);
			
			int row = insert(post);
			if(row == 1) {
				System.out.println("insert 성공~");
			}else {
				System.out.println("insert 오류 ;;");
			}
		}
		
		response.sendRedirect("main");
	}
	private int insert(Post post) {
		//1~6번
		String sql = "INSERT INTO post "
				+ "(title, body) "
				+ "VALUES (?, ?)";
		
	
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	// jdbc:oracle:thin:@mydb501_high?TNS_ADMIN=C:\\Users\\mydb00\\Documents\\Wallet_mydb501
	//String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "c##mydbms"; //mydb28
	String password = "admin"; // adminAdmin12
	
	int row = 0;
	try {

	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con = DriverManager.getConnection(url, user, password);

	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, post.getTitle());
	pstmt.setString(2, post.getBody());

	row =pstmt.executeUpdate();

	pstmt.close();
	con.close();
	}catch (Exception e) {
		e.printStackTrace();
	}
	return row;
	}
}

