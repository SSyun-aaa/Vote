package servlet;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentsDAO;

/**
 * Servlet implementation class GetPicture
 */
@WebServlet("/GetPicture")
public class GetContentsPicture extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetContentsPicture() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");//商品のidを取得
		ContentsDAO contentsdao = new ContentsDAO();//daoの用意
		BufferedImage img = contentsdao.getPicture(id);//商品の画像を取得
		
		// 画像をクライアントに返却する
		response.setContentType("image/jpeg");//画像の型指定
		OutputStream os = response.getOutputStream();//レスポンスから画像のセット
		ImageIO.write(img, "jpg", os);//表示
		os.flush();//jspに返す
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}