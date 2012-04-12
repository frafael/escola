package controller;

import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/alunos")
public class aluno {
	
	private Result result;
	private dao.aluno alunoDao;
	
	public aluno( Result result, dao.aluno alunoDao) {
		this.alunoDao = alunoDao;
		this.result = result;
	}
	@Get("")
	public void alunosList() {
		result.include("alunos", alunoDao.list());
	}

	@Get("/new")
	public void formulario() {}
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("aluno", alunoDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("aluno", alunoDao.load(id));
	}
	
	@Post("")
	public void save( model.aluno aluno ) {
		alunoDao.save(aluno);
		result.redirectTo(this).alunosList();
	}
	
	@Put("")
	public void update( model.aluno aluno ) {
		alunoDao.update(aluno);
		result.redirectTo(this).alunosList();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		model.aluno aluno = alunoDao.load(id);
		alunoDao.delete(aluno);
		result.redirectTo(this).alunosList();
	}
	
}
