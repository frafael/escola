package controller;

import dao.AlunoDao;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/")
public class AlunoController {
	
	private Result result;
	private AlunoDao alunoDao;
	
	public AlunoController( Result result, AlunoDao alunoDao) {
		this.result = result;
		this.alunoDao = alunoDao;
	}
	
	@Path("")
	public void index() {}
	
	@Get("alunos")
	public void alunos() {
		result.include("alunos", alunoDao.list());
	}

	@Get("alunos/new")
	public void formulario() {}
	
	@Get("alunos/{id}/edit")
	public void edit( Long id ) {
		result.include("aluno", alunoDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("alunos/{id}/show")
	public void show( Long id ) {
		result.include("aluno", alunoDao.load(id));
	}
	
	@Post("alunos")
	public void save( model.Aluno aluno ) {
		alunoDao.save(aluno);
		result.redirectTo(this).alunos();
	}
	
	@Put("alunos")
	public void update( model.Aluno aluno ) {
		alunoDao.update(aluno);
		result.redirectTo(this).alunos();
	}
	
	@Delete("alunos/{id}")
	public void delete( Long id ) {
		model.Aluno aluno = alunoDao.load(id);
		alunoDao.delete(aluno);
		result.redirectTo(this).alunos();
	}
}