package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReceitaDao;
import model.Receita;

/**
 * Servlet implementation class Search
 */
@WebServlet({ "/Search", "/search" })
public class Search extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Search() {
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
		ReceitaDao daoreceita = new ReceitaDao();
		List<Receita> receitas = new ArrayList<Receita>();
		receitas = daoreceita.filterReceita(request.getParameter("pesquisa"));
		
		request.setAttribute("receitas", receitas);
		request.getRequestDispatcher("BuscaReceita.jsp").forward(request,response);
	}

}
