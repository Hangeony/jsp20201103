package chap17.sample1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUPprocess
 */
@WebServlet("/sample1/process")
public class SignUpProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SignUpProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// �������� ��ȿ�ϸ� (id�� pw�� �ٸ���)
		if (id != null && pw != null && !id.equals(pw)) {
			// ����ó���ϰ� �Ϸ������� �����ְ� (forward)
			request.setAttribute("userId", id);
			String path = "/chap17/lecture/sample1/done.jsp";
			RequestDispatcher dispatcher = request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		} else {
			// ��ȿ���� ������
			// form���� redirect
			HttpSession session = request.getSession();
			session.setAttribute("formId", id);
			session.setAttribute("formPw", pw);
			session.setAttribute("message", "id�� password�� ��ġ�Դϴ�.");
			
			String path = request.getContextPath() + "/sample1/signup";
			response.sendRedirect(path);
			
		
		}

	}

}