package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDao;
import model.Usuario;


/**
 * Servlet implementation class ControllerUsuario
 */
@WebServlet({ "/ControllerUsuario", "/controllerusuario" })
public class ControllerUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int usuarioid = Integer.parseInt(request.getParameter("id"));
		
		if(request.getParameter("action").equals("edit")) {
			UsuarioDao daousuario = new UsuarioDao();
			Usuario conusuario = daousuario.get(usuarioid);
			request.setAttribute("usuario", conusuario);
			request.getRequestDispatcher("usuariosedit.jsp").forward(request,response);
		}
		
		if(request.getParameter("action").equals("del")) {
			UsuarioDao daousuario = new UsuarioDao();
			Usuario delusuario = daousuario.get(usuarioid);
			daousuario.delete(delusuario);
			response.sendRedirect("usuarioscon.jsp?msg=del");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UsuarioDao daousuario = new UsuarioDao();
		int usuarioid = 0;
		
		try {
			if(!(request.getParameter("usuarioid") == null)) {
				usuarioid = Integer.parseInt(request.getParameter("usuarioid"));
				Usuario user = daousuario.get(usuarioid);
				
				user.setNome(request.getParameter("nome"));
				user.setSenha(request.getParameter("senha"));
				
				Date datanascimento = new SimpleDateFormat("dd/mm/yyyy").parse(request.getParameter("datanascimento"));
				user.setDataNascimento(datanascimento);

				user.setLocalizacao(request.getParameter("localizacao"));
				user.setSexo(request.getParameter("sexo"));
				user.setEmail(request.getParameter("email"));
				user.setAdmin(Boolean.parseBoolean(request.getParameter("admin")));
				
				daousuario.update(user);
				response.sendRedirect("usuarioscon.jsp?msg=edit");
			} else {
				
				Usuario user = new Usuario();
				user.setNome(request.getParameter("nome"));
				user.setSenha(request.getParameter("senha"));
				
				Date datanascimento = new SimpleDateFormat("dd/mm/yyyy").parse(request.getParameter("datanascimento"));
				user.setDataNascimento(datanascimento);

				user.setLocalizacao(request.getParameter("localizacao"));
				user.setSexo(request.getParameter("sexo"));
				user.setEmail(request.getParameter("email"));
				user.setAdmin(Boolean.parseBoolean(request.getParameter("admin")));
				
				daousuario.save(user);
				response.sendRedirect("usuarioscon.jsp?msg=add");
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
