package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ContentsdataDAO;
import model.ContentsdataBean;
import model.UserBean;

/**
 * Servlet implementation class GetContentsdata
 */
@WebServlet("/GetContentsdata")
public class GetContentsdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetContentsdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//参加者すべての情報を取得し、セッションに格納
		HttpSession session = request.getSession();
		
		String contentsid = request.getParameter("c_id");
		String contentsdataid = request.getParameter("d_id");
		ContentsdataDAO contentsdatadao = new ContentsdataDAO();
		ContentsdataBean contentsdata = new ContentsdataBean();
		
		contentsdata = contentsdatadao.getContentsdate(contentsid, contentsdataid);
		
		session.setAttribute("contentsdata", contentsdata);
		
		request.getRequestDispatcher("*.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
