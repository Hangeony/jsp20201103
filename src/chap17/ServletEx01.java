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
       //HttpServlet �� ��ӹ޾Ҵ�. ��û�� �޾Ƽ� �̰��� ������. 
	   //�ν��Ͻ��� �ϴ����� doGet,doPost 
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
	//servlet ���� �ڵ����� ������ִ� �޼ҵ� 1 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	//servlet ���� �ڵ����� ������ִ� �޼ҵ� 2
}
