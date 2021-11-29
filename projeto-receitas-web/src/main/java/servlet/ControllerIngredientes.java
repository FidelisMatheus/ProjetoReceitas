package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.IngredienteDao;
import enuns.UnidadeMedida;
import model.Ingrediente;

/**
 * Servlet implementation class ControllerIngredientes
 */

@WebServlet("/controlleringredientes")
public class ControllerIngredientes extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ControllerIngredientes() {
        // TODO Auto-generated constructor stub
    	super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		int ingid = Integer.parseInt(request.getParameter("id"));
		
		if(request.getParameter("action").equals("edit")) {

			IngredienteDao daoing = new IngredienteDao();
			Ingrediente coning = daoing.get(ingid);
			request.setAttribute("ingrediente",coning);
			request.getRequestDispatcher("ingedit.jsp").forward(request, response);
		}

		
		if(request.getParameter("action").equals("del")) {
			IngredienteDao daoing = new IngredienteDao();
			Ingrediente deling = daoing.get(ingid);
			daoing.delete(deling);
			response.sendRedirect("ingcon.jsp?msg=del");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IngredienteDao daoing = new IngredienteDao();
		int ingid = 0;
		
		
		if(!(request.getParameter("id") == null)) {
			
			ingid = Integer.parseInt(request.getParameter("id"));
			
			Ingrediente ing = daoing.get(ingid);
		
		ing.setNome(request.getParameter("nome"));
		ing.setUnidadeMedida(UnidadeMedida.valueOf(request.getParameter("unidadeMedida")));
		
		daoing.update(ing);
		response.sendRedirect("ingcon.jsp?msg=add");
	}else {
		
		Ingrediente ing = new Ingrediente();
		ing.setNome(request.getParameter("nome"));
		ing.setUnidadeMedida(UnidadeMedida.valueOf(request.getParameter("unidadeMedida")));
		
		daoing.save(ing);
		response.sendRedirect("ingcon.jsp?msg=add");
	}
	}

}
