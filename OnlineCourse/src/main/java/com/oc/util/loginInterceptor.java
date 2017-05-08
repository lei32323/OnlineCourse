package com.oc.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
/**
 * 拦截器
 * 
 *
 */
public class loginInterceptor implements  HandlerInterceptor   {
	
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		Object user = request.getSession().getAttribute("user");//获取用户
		String parameter = request.getParameter("isok");//是否重定向过来
		if(parameter!=null&&parameter.equals("1")){//如果是则放过让用户登录
			return true;
		}
		if(user==null){//不是的就跳转到登陆页面
//			request.getRequestDispatcher("/WEB-INF/view/index.jsp").forward(request, response);  
			response.sendRedirect(request.getContextPath()+"/login?isok=1");
			return false;
		}
		// TODO Auto-generated method stub
		return true;
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	
}
