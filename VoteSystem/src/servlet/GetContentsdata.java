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
import dao.VotehistoryDAO;
import model.ContentsBean;
import model.ContentsdataBean;
import model.UserBean;

/**
 * Servlet implementation class GetContentsdata
 */
@WebServlet("/GetContentsdata")
public class GetContentsdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public GetContentsdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
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

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//参加者1人の情報を取得し、セッションに格納
		HttpSession session = request.getSession();
		
		String contentsdataid = request.getParameter("id");
		ContentsBean contentsBean = new ContentsBean();
		contentsBean = (ContentsBean) session.getAttribute("contentsBean");
		
		//値が書き換えられてないか
		ContentsdataDAO contentsdataDAO = new ContentsdataDAO();
		int check = contentsdataDAO.duplicationContentdIdCheck(contentsBean.getContentsID(), contentsdataid);
		
		if(check != 1){
			//0なら値が書き換えられている
			request.getRequestDispatcher("contentslist.jsp").forward(request, response);
		}else{
			//1なら正常
			ContentsdataBean contentsdataBean = new ContentsdataBean();
			contentsdataBean = contentsdataDAO.getContentsdate(contentsBean.getContentsID(), contentsdataid);
			
			session.setAttribute("contentsdataBean", contentsdataBean);
			
			//ユーザが対象コンテンツに投票済みか確認
			VotehistoryDAO votehistoryDAO = new VotehistoryDAO();
			UserBean userBean = (UserBean)session.getAttribute("loginUser");
			check = votehistoryDAO.getContentsVoteCheck(userBean.getUserID(), contentsdataBean.getContentsID(), contentsdataBean.getContentsdataID());
			
			session.setAttribute("voteCheck", check);
			
			request.getRequestDispatcher("contentsdata.jsp").forward(request, response);
		}
	}
}
