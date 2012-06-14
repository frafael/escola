package controller;

import model.Professor;
import dao.ProfessorDao;
import dao.MateriaDao;
import dao.SerieDao;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/professores")
public class ProfessorController {
	
	private Result result;
	private ProfessorDao professorDao;
	private SerieDao serieDao;
	private MateriaDao materiaDao;
	
	public ProfessorController( Result result, ProfessorDao professorDao, SerieDao serieDao, MateriaDao materiaDao) {
		this.result = result;
		this.professorDao = professorDao;
		this.serieDao = serieDao;
		this.materiaDao = materiaDao;
	}
	
	@Get("")
	public void professores() {
		result.include("professores", professorDao.list());
	}

	@Get("/new")
	public void formulario() {
		result.include("series", serieDao.list());
	}
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("professor", professorDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("professor", professorDao.load(id));
	}
	
	@Post("professores")
	public void save( Professor professor ) {
		professorDao.save(professor);
		result.redirectTo(this).professores();
	}
	
	@Put("professores")
	public void update( Professor professor ) {
		professorDao.update(professor);
		result.redirectTo(this).professores();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		Professor professor = professorDao.load(id);
		professorDao.delete(professor);
		result.redirectTo(this).professores();
	}	
}