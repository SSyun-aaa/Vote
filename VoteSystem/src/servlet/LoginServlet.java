package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.PasswordDAO;
import dao.UserDAO;
import model.PasswordBean;
import model.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		String id = request.getParameter("userid");
		String password = request.getParameter("password");

		PasswordDAO passwordDAO = new PasswordDAO();
		PasswordBean userpass = new PasswordBean();

		userpass = passwordDAO.searchUser(id, password);

		String path = "";
		if(userpass != null){
			UserBean userBean = new UserBean();
			UserDAO userDAO = new UserDAO();

			userBean = userDAO.getUser(id);
			session.setAttribute("loginUser",userBean);

			if(userBean.getAuthority().equals("U")){
				path = "contents.jsp";
			}else{
				path = "*";
			}
		}else{
			path = "login.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);


	}

}
