package com.qiuxm.myweb.common;

import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * path
 * @author qiuxm
 *
 */
public class CommonRequestFilter extends OncePerRequestFilter {

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, 
								FilterChain filterChain) throws ServletException, IOException {

		StringBuffer path = new StringBuffer();
		path.append(request.getScheme()).append("://")
				.append(request.getServerName()).append(":")
				.append(request.getServerPort());
		path.append(request.getContextPath()).append("/");

		ServletContext servletContext = request.getSession().getServletContext();
		servletContext.setAttribute("ctx", path);

		filterChain.doFilter(request, response);
	}

}
