package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ContentsDAO;
import model.ContentsBean;
import model.UserBean;

/**
 * Servlet implementation class GetContents
 */
@WebServlet("/GetContents")
public class GetContents extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetContents() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//すべてのコンテンツを取得し、セッションに格納
		HttpSession session = request.getSession();
		UserBean userbean = (UserBean)session.getAttribute("loginuser");
		ContentsDAO contentsdao = new ContentsDAO();
		ArrayList<ContentsBean> arraycontents = new ArrayList<ContentsBean>();
		arraycontents = contentsdao.getAllContents();
		session.setAttribute("arraycontents",arraycontents);
		
		if(userbean.getAuthority().equals("A")){
			request.getRequestDispatcher("U02.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("*.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
