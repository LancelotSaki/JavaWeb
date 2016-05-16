package servletdemo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String weburl = request.getParameter("weburl");
        if(weburl!=null&&weburl.equals("http://www.w3csschool.com")){
             request.setAttribute("weburl", "你输入的是W3C在线教程网");
        }else{
             request.setAttribute("weburl", "你输入的网址在数据库中未有记录");
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
		
	}

}
