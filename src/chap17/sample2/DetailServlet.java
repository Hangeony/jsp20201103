package chap17.sample2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class DetailServlet
 */
@WebServlet("/sample2/detail")
public class DetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Post> list;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	list = (List<Post>) application.getAttribute("posts");
    	
    	super.init();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idx = request.getParameter("idx");
		// list���� idx�� �ش��ϴ� post�� ������
		Post post = list.get(Integer.parseInt(idx));
		// request�� attribute�� ��Ƽ� 
		request.setAttribute("post", post);
		// deatil.jsp�� forward ��Ŵ
		String path = "/chap17/lecture/sample2/detail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}