package chap17.sample2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class FormServlet
 */
@WebServlet("/sample2/form")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Post> list;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	Object obj = application.getAttribute("posts");
    	
    	if(obj == null) {
    		list = new ArrayList<>();
    		application.setAttribute("posts", list);
    	}else {
    		list = (List<Post>) obj;
    	}
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/chap17/lecture/sample2/form.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
//		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
//		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String body = request.getParameter("body");
		
		if(title != null && body != null && !title.isEmpty() && !body.isEmpty()) {
			// ������ �Ǿ������� 
			//db�� ���� (�ӽ÷� application�� ����)
			Post post = new Post();
			post.setTitle(title);
			post.setBody(body);
			list.add(post);
			//����� �����ִ�  servlet���� redirect�Ұ���
			response.sendRedirect(request.getContextPath() + "/sample2/list");
		}else {
			//�� �ۼ����� �ʾ����� 
			
			// form.jsp�� forward�� 
			doGet(request, response);
		}
	}

}
