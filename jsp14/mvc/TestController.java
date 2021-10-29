package web.jsp14.mvc;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class TestController extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		// request에 속성 추가
		request.setAttribute("num", 99);
		request.setAttribute("id", "java");
		
		//null 값 보내기
		//request.setAttribute("myList", list);
		
		
		
		//문자형 숫자를 보내서 EL로 숫자 연산
		request.setAttribute("age", "20");
		
		
		//session에 속성 추가
		HttpSession session = request.getSession();
		session.setAttribute("num", 777);
		
		
		
		//배열 보내기
		int [] arr = {10,20,30,40,50};
		request.setAttribute("arr", arr);
		
		//ArrayList 보내기
		List list = new ArrayList();
		list.add("java");	//arraylist에 데이터 추가
		list.add("jsp");
		list.add("spring");
		request.setAttribute("list", list);
		
		
		//TestVO 보내기
		TestVO vo = new TestVO();
		vo.setId("pick");
		vo.setAge(100);
		vo.setName("피카츄");
		request.setAttribute("vo", vo);
		
	
		request.getRequestDispatcher("/jsp14/test.jsp").forward(request, response);
		
	}
	
	
}
