package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import api.WebService;

@WebServlet("/MecadoLivre")
public class MecadoLivre extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MecadoLivre() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		WebService service = new WebService();
		try {
			
			String token = service.getAuth();
			
			System.out.println("TOKEN:  " + token);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
