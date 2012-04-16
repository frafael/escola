package controller;

import dao.SerieDao;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource @Path("/series")
public class SerieController {
	
	private Result result;
	private SerieDao serieDao;
	
	public SerieController(Result result, SerieDao serieDao){
		this.result = result;
		this.serieDao = serieDao;
	}
	
	@Get("")
	public void series() {
		result.include("series", serieDao.list());
	}

	@Get("/new")
	public void formulario() {}
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("serie", serieDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("serie", serieDao.load(id));
	}
	
	@Post("")
	public void save( model.Serie serie ) {
		serieDao.save(serie);
		result.redirectTo(this).series();
	}
	
	@Put("")
	public void update( model.Serie serie ) {
		serieDao.update(serie);
		result.redirectTo(this).series();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		model.Serie serie = serieDao.load(id);
		serieDao.delete(serie);
		result.redirectTo(this).series();
	}
}
