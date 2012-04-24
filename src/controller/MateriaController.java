package controller;

import model.Materia;
import dao.MateriaDao;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/materias")
public class MateriaController {
	
	private Result result;
	private MateriaDao MateriaDao;
	
	public MateriaController( Result result, MateriaDao MateriaDao) {
		this.result = result;
		this.MateriaDao = MateriaDao;
	}
	
	@Get("")
	public void materias() {
		result.include("materias", MateriaDao.list());
	}

	@Get("/new")
	public void formulario() { }
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("materia", MateriaDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("materia", MateriaDao.load(id));
	}
	
	@Post("")
	public void save( Materia materia ) {
		MateriaDao.save(materia);
		result.redirectTo(this).materias();
	}
	
	@Put("")
	public void update( Materia materia ) {
		MateriaDao.update(materia);
		result.redirectTo(this).materias();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		Materia materia = MateriaDao.load(id);
		MateriaDao.delete(materia);
		result.redirectTo(this).materias();
	}
}