package servlet;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import java.io.File;
import java.util.Iterator;
import java.util.List;


import dao.ReceitaDao;
import dao.UsuarioDao;
import model.Receita;
import model.Usuario;


@WebServlet({ "/ControllerReceita_", "/controllerreceita" })
@MultipartConfig
public class ControllerReceita_ extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private static final String DATA_DIRECTORY = "data";
	private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
	private static final int MAX_REQUEST_SIZE = 1024 * 1024;
	
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
		
		//check that we have a file upload request
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String filePath = "";
		
		if(!isMultipart) {
			return;
		}
		
		//create a factory for disk-based file items
		FileItemFactory factory = new DiskFileItemFactory();
				
		//constructs the folder where uploaded file will be stored
		//String uploadFolder = getServletContext().getRealPath("") + File.separator + DATA_DIRECTORY;
		
		//create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//set overall request size constraint
		//upload.setSizeMax(MAX_REQUEST_SIZE);
		
		try {
			
			//Parse the request
			List<FileItem> items = upload.parseRequest((RequestContext) request);
			Iterator<FileItem> iter = items.iterator();
			
			while(iter.hasNext()) {
				FileItem item = (FileItem) iter.next();
			
				if(!item.isFormField()) {
					String fileName = item.getName();
					String root =getServletContext().getRealPath("/");					
					filePath = root + "/data";
					File path = new File(filePath);
					
					if(!path.exists()) {
						boolean status = path.mkdirs();
					}
					
					File uploadedFile = new File(path + "/" + fileName);
					
					//saves the file to upload directory
					item.write(uploadedFile);
				}
			}
					
			
		} catch (FileUploadException ex){
			throw new ServletException(ex);
		}catch(Exception ex) {
			throw new ServletException(ex);
		}
		
		
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
			receita.setUrlfoto(filePath);
			
			//aqui vou pegar o usuario e ingredientes por sessão
			//receita.setUsuario(usuario);
			//receita.setIngrediente(request.getParameter("listaIngredientes"));
			
			daoReceita.update(receita);
			response.sendRedirect("receitascon.jsp?msg=upd");
		} else {
			
			Receita receita = new Receita();
			//receita.setCategoria(request.getParameter("categoria"));
			receita.setDescricao(request.getParameter("descricao"));
			receita.setModoPreparo(request.getParameter("mododepreparo"));
			receita.setPorcao(request.getParameter("porcao"));
			receita.setTempoPreparo(request.getParameter("tempopreparo"));
			receita.setTitulo(request.getParameter("titulo"));
			
			
			//Testar Imagem
			//Part filePart = request.getPart("urlfoto"); // Retrieves <input type="file" name="file">
		    //String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
		    //InputStream fileContent = filePart.getInputStream();
			
			
			receita.setUrlfoto(request.getParameter("urlfoto"));
			
			
			
			
			//aqui vou pegar o usuario e ingredientes por sessão
			UsuarioDao daousuario = new UsuarioDao();
			
			int usuarioid = Integer.parseInt(request.getParameter("usuarioid"));
			Usuario usuario = daousuario.get(usuarioid);
			
			receita.setUsuario(usuario);
			//receita.setIngrediente(request.getParameter("listaIngredientes"));
			
			
			daoReceita.save(receita);
			response.sendRedirect("receitascon.jsp?msg=add");
		}
		
	}

}










