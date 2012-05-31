package model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Serie {
	
	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String nome;
	
	@ManyToMany
	private List<Materia> materias;

	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void setMaterias(List<Materia> materias) {
		this.materias = materias;
	}

	public List<Materia> getMaterias() {
		return materias;
	} 
}