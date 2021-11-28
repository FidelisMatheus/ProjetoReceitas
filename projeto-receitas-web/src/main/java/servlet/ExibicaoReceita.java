package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReceitaDao;
import model.Receita;

/**
 * Servlet implementation class ExibicaoReceita
 */
@WebServlet({ "/ExibicaoReceita", "/exibicaoreceita" })
public class ExibicaoReceita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ExibicaoReceita() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int receitaId = Integer.parseInt(request.getParameter("id"));
		
		if (request.getParameter("action").equals("exibir")) {
			
			ReceitaDao daoReceita = new ReceitaDao();
			Receita conReceita= daoReceita.get(receitaId);
			request.setAttribute("receita", conReceita);
			request.getRequestDispatcher("exibicaoReceita.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
