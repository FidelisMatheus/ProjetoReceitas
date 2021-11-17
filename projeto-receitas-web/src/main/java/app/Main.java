package app;

import dao.*;
import enuns.UnidadeMedida;
import model.*;

public class Main {

	public static void main(String[] args) {
		
		Usuario usuario1 = new Usuario("Lucas","123", "lucas@email.com");
		UsuarioDao daoUser = new UsuarioDao();
		
		
		Ingrediente ingrediente1 = new Ingrediente("Pao", UnidadeMedida.unidade);
		Ingrediente ingrediente2 = new Ingrediente("Ovo", UnidadeMedida.unidade);
		IngredienteDao daoIngrediente =  new IngredienteDao();
		daoIngrediente.save(ingrediente1);
		daoIngrediente.save(ingrediente2);
		
		Receita receita1 = new Receita("Pao com Ovo", "Delicioso pão com ovo");
		receita1.addIngrediente(ingrediente1);
		receita1.addIngrediente(ingrediente2);
		ReceitaDao daoReceita = new ReceitaDao();
		daoReceita.save(receita1);
		
		usuario1.addReceita(receita1);
		daoUser.save(usuario1);
		
	}

}
