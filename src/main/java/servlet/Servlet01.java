package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.UserVo;

@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 표현할 데이터 속성으로 설정 -> jsp에서 받아와서 JSP, EL 출력해서 비교
		int iValue = 2024;
		double fValue = Math.PI;
		String sValue = "Hello Servlet";
		boolean bValue = true;
		Object nullValue = null;
		
		// Vo 객체
		UserVo vo = new UserVo();
		vo.setNo(100);
		vo.setEmail("jammanbo@zzz.example.com");
		
		// 요청 속성에 데이터 설정
		request.setAttribute("iVal", iValue);			// 속성 추가 하는겨
		request.setAttribute("fVal", fValue);
		request.setAttribute("sVal", sValue);
		request.setAttribute("bVal", bValue);
		request.setAttribute("nullVal", nullValue);
		
		request.setAttribute("UserVo", vo);  			// Vo 속성 설정
		// 위에 request로 설정한 것들을 다 아래 forward에 request로 넣어서 출력
		// jsp에서 getAttribute로 출력 가능
		
		// JSP로 forwarding
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
