package chap17;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx01
 */
//@WebServlet("/ServletEx01")
public class ServletEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       //HttpServlet 을 상속받았다. 요청을 받아서 이값을 잘해줌. 
	   //인스턴스가 하는일은 doGet,doPost 
	   //
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx01() {
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
	//servlet 에서 자동으로 만들어주는 메소드 1 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	//servlet 에서 자동으로 만들어주는 메소드 2
}
