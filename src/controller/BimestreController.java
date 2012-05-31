package controller;

import model.Bimestre;
import dao.BimestreDao;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/bimestres")
public class BimestreController {
	
	private Result result;
	private BimestreDao bimestreDao;
	
	public BimestreController( Result result, BimestreDao bimestreDao) {
		this.result = result;
		this.bimestreDao = bimestreDao;
	}
	
	@Get("")
	public void bimestres() {
		result.include("bimestres", bimestreDao.list());
	}

	@Get("/new")
	public void formulario() { }
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("bimestre", bimestreDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("bimestre", bimestreDao.load(id));
	}
	
	@Post("")
	public void save( Bimestre bimestre ) {
		bimestreDao.save(bimestre);
		result.redirectTo(this).bimestres();
	}
	
	@Put("")
	public void update( Bimestre bimestre ) {
		bimestreDao.update(bimestre);
		result.redirectTo(this).bimestres();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		Bimestre bimestre = bimestreDao.load(id);
		bimestreDao.delete(bimestre);
		result.redirectTo(this).bimestres();
	}
}