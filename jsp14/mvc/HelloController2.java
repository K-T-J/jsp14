package web.jsp14.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController2  extends HttpServlet{
	
	
	//init 메서드 오버라이딩 : GenericServlet 의 init
	@Override
	public void init() throws ServletException {
		
		System.out.println("init !!!");
		
		
	}
	
	
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서비스 호출!!");
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp13/hello.jsp");
		rd.forward(request, response);
		
	}
	
	
	
	

}
