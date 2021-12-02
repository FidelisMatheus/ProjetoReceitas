package api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.Gson;

public class WebService {

	static String webService = "https://auth.mercadolivre.com.br/";
	static int codigoSucesso = 200;
	
	public static Produto buscaProduto(String produto) throws Exception{
		//aqui vou colocar a url para chamada de buscar um produto no mercado livre
		String urlParaChamada = webService +""+ produto;
		Produto produto1;
		
		try {
			URL url = new URL(urlParaChamada);
			HttpURLConnection conexao = (HttpURLConnection) url.openConnection();
			
			if(conexao.getResponseCode() != codigoSucesso)
				throw new RuntimeException("HTTP error code: " + conexao.getResponseCode());
			
			BufferedReader resposta = new BufferedReader(new InputStreamReader((conexao.getInputStream())));
			String jsonEmString = converteJsonEmString(resposta);
			
			Gson gson = new Gson();
			produto1 = gson.fromJson(jsonEmString, Produto.class);
			
			return produto1;
			
			
		} catch (Exception e) {
			throw new Exception("ERRO: " + e);
		}
		
	}
	
	
	//metodo que vai fazer a autorizacao no mercado livre e pegar o token
	public String getAuth() throws Exception {
		
		String urlParaChamada = webService + "authorization?response_type=code&client_id=7601532609534134&redirect_uri=http://localhost:8080/ProjetoReceitasWeb/Home.jsp";
		String jsonEmString;
		
		try {
			
			URL url = new URL(urlParaChamada);
			HttpURLConnection conexao = (HttpURLConnection) url.openConnection();
			conexao.setRequestMethod("GET");			
			conexao.setRequestProperty("accept", "application/json");
			
			if (conexao.getResponseCode() != codigoSucesso) {
				throw new RuntimeException("HTTP error code : " + conexao.getResponseCode());
			}
			
			BufferedReader resposta = new BufferedReader(new InputStreamReader((conexao.getInputStream())));
			jsonEmString = converteJsonEmString(resposta);
						
			
		} catch (Exception e) {
			throw new Exception("ERRO: " + e);
		}
		
		return jsonEmString;
		
	}
	
	
	public static String converteJsonEmString(BufferedReader buffereReader) throws Exception {
        String resposta, jsonEmString = "";
        while ((resposta = buffereReader.readLine()) != null) {
            jsonEmString += resposta;
        }
        return jsonEmString;
    }
}
