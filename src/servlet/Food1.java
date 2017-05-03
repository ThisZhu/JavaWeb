package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Food1
 */
@WebServlet("/Food1")
public class Food1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private FlagBean flagbean=FlagBean.getInstance();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Food1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.getWriter().write("food");
		 System.out.print(request.getParameter("value"));
		 if(request.getParameter("value").equals("1")){
			 flagbean.setFlag("1");
		 }else  if(request.getParameter("value").equals("2")){
			 flagbean.setFlag("2");
		 }else if(request.getParameter("value").equals("3")){
			 flagbean.setFlag("3");
		 }else  if(request.getParameter("value").equals("4")){
			 flagbean.setFlag("4");
		 }
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 doGet(request,response);
	}

}
