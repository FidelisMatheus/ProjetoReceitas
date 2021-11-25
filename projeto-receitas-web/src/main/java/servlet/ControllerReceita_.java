package servlet;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReceitaDao;
import model.Receita;


@WebServlet({ "/ControllerReceita_", "/controllerreceita" })
public class ControllerReceita_ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ControllerReceita_() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int receitaId = Integer.parseInt(request.getParameter("id"));
		
		if (request.getParameter("action").equals("edit")) {
			
			ReceitaDao daoReceita = new ReceitaDao();
			Receita conReceita= daoReceita.get(receitaId);
			request.setAttribute("receita", conReceita);
			request.getRequestDispatcher("receitasedit.jsp").forward(request, response);
			
		}else if (request.getParameter("action").equals("del")) {
			
			ReceitaDao daoReceita = new ReceitaDao();
			Receita delReceita= daoReceita.get(receitaId);
			daoReceita.delete(delReceita);
			response.sendRedirect("receitascon.jsp?msg=del");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ReceitaDao daoReceita = new ReceitaDao();
		int receitaId = 0;
		
		if (!(request.getParameter("receitaid") == null)) {
			
			receitaId = Integer.parseInt(request.getParameter("receitaid"));
			Receita receita = new Receita();
			receita = daoReceita.get(receitaId);
			
			//receita.setCategoria(request.getParameter("categoria"));
			receita.setDescricao(request.getParameter("descricao"));
			receita.setModoPreparo(request.getParameter("mododepreparo"));
			receita.setPorcao(request.getParameter("porcao"));
			receita.setTempoPreparo(request.getParameter("tempopreparo"));
			receita.setTitulo(request.getParameter("titulo"));
			receita.setUrlfoto(request.getParameter("urlfoto"));
			
			//aqui vou pegar o usuario e ingredientes por sessão
			//receita.setUsuario(usuario);
			//receita.setIngrediente(request.getParameter("listaIngredientes"));
			
			daoReceita.update(receita);
			response.sendRedirect("receitascon.jsp?msg=upd");
		}else {
			
			Receita receita = new Receita();
			//receita.setCategoria(request.getParameter("categoria"));
			receita.setDescricao(request.getParameter("descricao"));
			receita.setModoPreparo(request.getParameter("mododepreparo"));
			receita.setPorcao(request.getParameter("porcao"));
			receita.setTempoPreparo(request.getParameter("tempopreparo"));
			receita.setTitulo(request.getParameter("titulo"));
			receita.setUrlfoto(request.getParameter("urlfoto"));
			
			//aqui vou pegar o usuario e ingredientes por sessão
			//receita.setUsuario(usuario);
			//receita.setIngrediente(request.getParameter("listaIngredientes"));
			
			
			daoReceita.save(receita);
			response.sendRedirect("receitascon.jsp?msg=add");
		}
		
	}

}










