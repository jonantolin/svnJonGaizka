package com.ipartek.formacion.controller.filter;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ipartek.formacion.controller.pojo.Alert;
import com.ipartek.formacion.model.pojo.Usuario;

/**
 * Servlet Filter implementation class FilterSeguridad
 */
@WebFilter(dispatcherTypes = { DispatcherType.REQUEST, DispatcherType.FORWARD, DispatcherType.INCLUDE,
		DispatcherType.ERROR }, urlPatterns = { "/backoffice/*" })
public class FilterSeguridadAdmin implements Filter {

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {

	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		HttpSession session = req.getSession();

		session.setAttribute("callback", req.getRequestURI());

		if (session.getAttribute("usuario") != null) {

			Usuario usuario = (Usuario) session.getAttribute("usuario");

			if (usuario.getRol().getId() == 1) {

				chain.doFilter(request, response);

			} else {

				session.setAttribute("mensaje",
						new Alert("danger", "Tu usuario no es administrador, ingresa como tal"));
				res.sendRedirect(req.getContextPath() + "/login.jsp");
			}

		} else {
			// response redireccionar a login
			session.setAttribute("mensaje", new Alert("danger", "Por favor inicia session para poder acceder"));
			res.sendRedirect(req.getContextPath() + "/login.jsp");
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {

	}

}
