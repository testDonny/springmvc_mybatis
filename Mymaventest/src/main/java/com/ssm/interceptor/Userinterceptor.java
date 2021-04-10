package com.ssm.interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.po.Com;
import com.ssm.po.Timeswatched;
import com.ssm.po.video;
import com.ssm.service.UserService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Userinterceptor implements HandlerInterceptor {

	@Autowired
	UserService userService;

//	Cookie[] cookies;
	// ���e����
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
		
		
		
		
		if(request.getSession().getAttribute("video0")==null&&
				request.getSession().getAttribute("path0")==null) {
		video video=new video(); 
		List<video> videos=userService.videos(video);
		for(int x=0;x<videos.size();x++) {
			request.getSession().setAttribute("video"+x, videos.get(x).getVideos());
			request.getSession().setAttribute("path"+x, videos.get(x).getPath());
		}
		}
		
		
		Timeswatched t = new Timeswatched();
		Timeswatched ts = userService.look(t);
		System.out.println("查結果:  " + ts);
		String look = ts.toString();
		String[] looks = look.split(",");

		for (int y = 0; y < looks.length; y++) {
			request.getSession().setAttribute("look" + y, looks[y]);

		}

		// 一開始就載入影片的觀看次數

		if (request.getSession().getAttribute("G_AUTHUSER_H") != null) {
			request.setAttribute("google", "log");
			request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
			System.out.println("攔截器啟動");
			return false;

		}

		Com com = new Com();
		System.out.println("我是當前的value:  " + request.getParameter("value"));
		if (request.getSession().getAttribute("id1") == null) {
			for (int x = 1; x <= 12; x++) {

				com.setId(x);
				Com coms = userService.findCommit(com);
				System.out.println(coms);
				request.getSession().setAttribute("id" + x, coms.getId());
				request.getSession().setAttribute("name" + x, coms.getCname());
				request.getSession().setAttribute("content" + x, coms.getContent());
				request.getSession().setAttribute("price" + x, coms.getPrice());

				// 讓資料庫只進行一次讀取
				System.out.println("id: " + coms.getId());
				System.out.println("name: " + coms.getCname());
				System.out.println("content: " + coms.getContent());
				System.out.println("price: " + coms.getPrice());
				// 計算買了多少次東西

			}

		}

		// 一開始就載入商品

		String uri = request.getRequestURI();
		String contextPath = request.getContextPath(); // 當前路徑

		String path = uri.substring(uri.lastIndexOf("/") + 1);

		String url = request.getRequestURL().toString();
		System.out.println(contextPath);
		System.out.println(url);
//		String path1 = uri.toString();
//		System.out.println("path1測試"+path1);
//		uri=uri.substring(contextPath.length()+1);
//		System.out.println("現在的測試:  "+this.getClass().getClassLoader().getResource("/").getPath());
//    	response.setContentType ("text/html;charset=utf-8");
		System.out.println("當前路徑:   " + path);

		char c = url.charAt(url.length() - 1);
		// 拿到最後一個值
		String cc = String.valueOf(c);
		// 轉回字串

		if (cc.equals("/")) {
			// 如果最後一個值是/進行攔截
			System.out.println("/說掰掰");

			return false;
		}

		if (url.contains("/toselect")) {
			if (request.getSession().getAttribute("userid") == null
					&& request.getSession().getAttribute("googleEmail") == null) {
				request.setAttribute("plaselogins", "plaselogin");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;

			}

		}

		if (url.contains("/responsereceive")) {
			if (request.getSession().getAttribute("userid") == null
					&& request.getSession().getAttribute("googleEmail") == null) {
				request.setAttribute("plaseloginss", "plaselogin");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;

			}

		}
		if (url.contains("/shop")) {
			if (request.getSession().getAttribute("userid") == null
					&& request.getSession().getAttribute("googleEmail") == null) {
				request.setAttribute("shopss", "shopss");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;

			}

		}

		if (url.contains("/tomsg")) {
			if (request.getSession().getAttribute("userid") == null
					&& request.getSession().getAttribute("googleEmail") == null) {
				request.setAttribute("plaselogin", "plaselogin");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;

			}
		}

		if (url.contains("/toadministrator")) {
			if (request.getSession().getAttribute("userid") != null
					|| request.getSession().getAttribute("googleEmail") != null) {
				request.setAttribute("no", "no");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}
			if (request.getSession().getAttribute("administrator") != null) {
				request.setAttribute("no1", "no");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}
		}

		if (url.contains("/toshipment")) {
			if (request.getSession().getAttribute("administrator") == null) {
				request.setAttribute("no", "no");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}
		}

		if (url.contains("/tofeedback")) {
			if (request.getSession().getAttribute("administrator") == null) {
				request.setAttribute("no", "no");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}
		}
		
		
		if (url.contains("/toforget")) {
			if (request.getSession().getAttribute("u1") == null||request.getSession().getAttribute("u2")==null) {
				request.setAttribute("eqs", "eqs");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}
		}
		

		if (url.contains("/toindex322")) {
//		if("/test/toindex322".contentEquals(path1)) {
			if (request.getSession().getAttribute("administrator") != null) {
				request.setAttribute("what", "what");
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}

			if (request.getSession().getAttribute("username") != null
					|| request.getSession().getAttribute("googleEmail") != null) {

				request.setAttribute("relogin", "請不要從新登入");
				System.out.println(request.getAttribute("relogin"));
				request.getRequestDispatcher("/WEB-INF/views/index.jsp").forward(request, response);
				System.out.println("攔截器啟動");
				return false;
			}

		}

//    	System.out.println("�ثe���|= "+path);
//    	if("tologin".equals(path)||"loginc".equals(path))
//    	{
//    		if(test(request,response)==true||request.getSession().getAttribute("username")!=null||request.getSession().getAttribute("password")!=null)
//    		{
//    	request.getRequestDispatcher("/WEB-INF/jsp/start.jsp").forward(request, response);
//    		return false;
//    		}
//    		else {
//        	return true;
//    		}
//
//    	}else if("toregister".equals(path)||"registerok".equals(path)||"toupdate".equals(path)||"updatec".equals(path))
//    	{	//��cookie�Ϊ̦�session�s�b�L�k�q�s�n�J
//    		if(cookies!=null||request.getSession().getAttribute("username")!=null||request.getSession().getAttribute("password")!=null) {
//    			request.getRequestDispatcher("/WEB-INF/jsp/loginfail.jsp").forward(request,response);
//        	
//        		return false;
//    		}else {
//    			System.out.println("���U�Χ�K�X���ݭn��cookie��session�ܼ�");
//    				return true;
//    		}
//
//    	}
//    	else		//�C���n�J�ڳ��|����session �ͩR�g�����ܼ������ᰱ��
//    	if(request.getSession().getAttribute("username")==null||request.getSession().getAttribute("password")==null) {
//    		test(request,response);
//    		if(request.getSession().getAttribute("username")==null||request.getSession().getAttribute("password")==null) {
//    			return true;
//    		}else {
//    		request.setAttribute("msg","�бq�s�n�J");
//    		request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request, response);
//    		return false;
//    		}
//    	}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o,
			ModelAndView modelAndView) throws Exception {

	}

	@Override
	public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse,
			Object o, Exception e) throws Exception {

	}
//    public boolean test(HttpServletRequest request,HttpServletResponse response) {
//    	Cookie[] cookies = request.getCookies();//�o�̬O���XCookie
//    	if(cookies!=null) {//�i�J�n�J�e�����P�_���S��cookie�����ܪ����n�J
//			String username1 = "";
//			String password1 = "";
//            for (Cookie cookie : cookies){//�M��Cookie�P�_���S��������name
//                if (cookie.getName().equals("user")){
//                	System.out.println("�d�I����");
//                	System.out.println("cookie�����d�I= "+cookie.getName());
//                	System.out.println("cookie�����d�I= "+cookie.getValue());
//                	String string = cookie.getValue();
//                	String[] values = string.split("&");
//                	username1=values[0];
//                	password1=values[1];
//                	System.out.println("cookie���δ���= "+username1);
//                	System.out.println("cookie���δ���= "+password1);
//                	User user=new User();
//                	user.setUsername(username1);	//��cookie�s�b��s�b��cookie
//                	user.setPassword(password1);	//�����ϥΪ�
//                    request.getSession().setAttribute("username", user.getUsername());
//                    request.getSession().setAttribute("password", user.getPassword());
//                    return true;
//                }
//            }
//	  }
//    		return false;
//    }

}
