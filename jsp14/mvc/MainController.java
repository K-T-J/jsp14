package web.jsp14.mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//Controller : 모든 요청이 들어올 컨트롤러
public class MainController extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("잘 넘어왔나?");
		// 모든 요청이 이곳으로 들어오니 uri 분석하여 요청에 따라 올바른 처리를 하고, 요청에 맞는 jsp 페이지로 forward 해줘야한다.
		
		//1. uri 분석 : uri꺼내기
		String uri = request.getRequestURI(); 
		System.out.println("uri : " + uri);//  /web/~~~.git
		
		//2. 각 uri 요청에 따른 처리
		String view = ""; //넘어갈 jsp 페이지 담을 변수 미리 선언
		
		
		
		if(uri.equals("/web/login.git")) { // 요청 경로가 이와 같으면 로그인 폼으로 이동: 문자열로 uri 지정해놓은것과 같은 효과
			//로그인에 해당하는 비지니스 로직 처리 : 할게없음
			//로그인 폼 보여주기
			view = "/jsp13/loginForm.jsp";
			
			
		}else if(uri.equals("/web/loginPro.git")) {
			// 로그인 프로에 대한 비지니스 로직 처리 : id,pw 체크하고 맞으면 session 속성추가
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			//DB 접근해서 id,pw check 하고 결과 받아 처리
			
			int result = 1;//dao.idPW(id,pw); 체크메서드
			if(result == 1) { 
				// 세션 생성... 등등
				HttpSession session = request.getSession();
				session.setAttribute("memId", id);//세션 속성 추가 : 로그인 처리
				
			}
			request.setAttribute("result", result); // view에 전달할 데이터는 request 속성 추가
			// 로그인 pro 페이지로 이동
			view ="/jsp13/loginPro.jsp";
			
			
		}
		
		
		//3. 요청에 맞는 jsp 페이지로 이동
		RequestDispatcher rd = request.getRequestDispatcher(view);// ()안에 변수로 넣는다
		rd.forward(request, response);
		
	}
	
	
}
