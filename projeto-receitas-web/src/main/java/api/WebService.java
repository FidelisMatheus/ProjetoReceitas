package api;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import com.google.gson.Gson;

public class WebService {

	static String webService = "";
	static int codigoSucesso = 200;
	
	public static Produto buscaProduto(String produto) throws Exception{
		//aqui vou colocar a url para chamada de buscar um produto no mercado livre
		String urlParaChamada = webService + produto + "/json";
		
		try {
			URL url = new URL(urlParaChamada);
			HttpURLConnection conexao = (HttpURLConnection) url.openConnection();
			
			if(conexao.getResponseCode() != codigoSucesso)
				throw new RuntimeException("HTTP error code: " + conexao.getResponseCode());
			
			BufferedReader resposta = new BufferedReader(new InputStreamReader((conexao.getInputStream())));
			String jsonEmString = converteJsonEmString(resposta);
			
			Gson gson = new Gson();
			Produto produto1 = gson.fromJson(jsonEmString, Produto.class);
			
			return produto1;
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
		
	}
	
	
	//metodo que vai fazer a autorizacao no mercado livre e pegar o token
	public static void getAuth() {
		
		
		
	}
	
	
	public static String converteJsonEmString(BufferedReader buffereReader) throws Exception {
        String resposta, jsonEmString = "";
        while ((resposta = buffereReader.readLine()) != null) {
            jsonEmString += resposta;
        }
        return jsonEmString;
    }
}
