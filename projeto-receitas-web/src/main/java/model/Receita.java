package model;

import java.util.ArrayList;
import java.util.List;

import enuns.CategoriaReceita;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Receita {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String titulo;
	private String descricao;
	private String modoPreparo;
	
	private String tempoPreparo;
	private String porcao;
	private String urlfoto;
	
	@Enumerated(EnumType.STRING)
	private CategoriaReceita categoria;
	
	@ManyToOne
	private Usuario usuario;

	@OneToMany
	private List<Ingrediente> ingredientes;

	public Receita() {
		super();
		this.ingredientes = new ArrayList<Ingrediente>();
	}
	public Receita(String titulo, String descricao) {
		super();
		this.titulo = titulo;
		this.descricao = descricao;
		this.ingredientes = new ArrayList<Ingrediente>();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getModoPreparo() {
		return modoPreparo;
	}
	public void setModoPreparo(String modoPreparo) {
		this.modoPreparo = modoPreparo;
	}
	public CategoriaReceita getCategoria() {
		return categoria;
	}
	public void setCategoria(CategoriaReceita categoria) {
		this.categoria = categoria;
	}
	public String getTempoPreparo() {
		return tempoPreparo;
	}
	public void setTempoPreparo(String tempoPreparo) {
		this.tempoPreparo = tempoPreparo;
	}
	public String getPorcao() {
		return porcao;
	}
	public void setPorcao(String porcao) {
		this.porcao = porcao;
	}
	public String getUrlfoto() {
		return urlfoto;
	}
	public void setUrlfoto(String urlfoto) {
		this.urlfoto = urlfoto;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public List<Ingrediente> getIngrediente() {
		return ingredientes;
	}
	public void setIngrediente(List<Ingrediente> ingrediente) {
		this.ingredientes = ingrediente;
	}
	public void addIngrediente(Ingrediente ingrediente) {
		this.ingredientes.add(ingrediente);
	}
	
}
