package api;

public class Vendedor {
	private String nome;
	private String url;
	private String cep;
	private String telefone;
	
	public Vendedor() {
		super();
	}
	public Vendedor(String nome, String url, String cep, String telefone) {
		super();
		this.nome = nome;
		this.url = url;
		this.cep = cep;
		this.telefone = telefone;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
		this.cep = cep;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	
}
