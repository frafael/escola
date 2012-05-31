package controller;

import model.Nota;
import dao.NotaDao;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/notas")
public class NotaController {
	
	private Result result;
	private NotaDao notaDao;
	
	public NotaController( Result result, NotaDao notaDao) {
		this.result = result;
		this.notaDao = notaDao;
	}
	
	@Get("")
	public void notas() {
		result.include("notas", notaDao.list());
	}

	@Get("/new")
	public void formulario() { }
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("nota", notaDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("nota", notaDao.load(id));
	}
	
	@Post("")
	public void save( Nota nota ) {
		notaDao.save(nota);
		result.redirectTo(this).notas();
	}
	
	@Put("")
	public void update( Nota nota ) {
		notaDao.update(nota);
		result.redirectTo(this).notas();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		Nota nota = notaDao.load(id);
		notaDao.delete(nota);
		result.redirectTo(this).notas();
	}
}
