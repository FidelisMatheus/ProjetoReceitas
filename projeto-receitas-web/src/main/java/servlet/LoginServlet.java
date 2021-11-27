package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsuarioDao;
import model.Usuario;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet", "/loginservlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// get request parameters for userID and password
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		
		UsuarioDao daouser = new UsuarioDao();
		Usuario usuario = new Usuario();
		usuario = null;
		
		if(user != null && pwd != null && !user.isEmpty() && !pwd.isEmpty())
			usuario = daouser.getEmailSenha(user, pwd);
		
		if(usuario != null){
			HttpSession session = request.getSession();
			session.setAttribute("usuario", usuario);
			session.setAttribute("user", usuario.getNome());
			session.setAttribute("id", usuario.getId());
			
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(30*60);
			
			response.sendRedirect("./LoginJSP/LoginSuccess.jsp");
		} else {
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/Login.jsp");
			PrintWriter out= response.getWriter();
			out.println("<font color=red>Either user name or password is wrong.</font>");
			rd.include(request, response);
		}
	}

}
