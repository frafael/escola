package controller;

import java.util.ArrayList;
import java.util.List;

import model.Materia;
import model.Serie;
import dao.MateriaDao;
import dao.SerieDao;
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
	private MateriaDao materiaDao;
	private SerieDao serieDao;
	
	public MateriaController( Result result, MateriaDao materiaDao, SerieDao serieDao) {
		this.result = result;
		this.materiaDao = materiaDao;
		this.serieDao = serieDao;
	}
	
	@Get("")
	public void materias() {
		result.include("materias", materiaDao.list());
	}

	@Get("/new")
	public void formulario() { }
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("materia", materiaDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("materia", materiaDao.load(id));
	}
	
	@Post("")
	public void save( Materia materia ) {
		materiaDao.save(materia);
		result.redirectTo(this).materias();
	}
	
	@Put("")
	public void update( Materia materia ) {
		materiaDao.update(materia);
		result.redirectTo(this).materias();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		Materia materia = materiaDao.load(id);
		List<Serie> series = serieDao.list();
		List<Materia> newMaterias = new ArrayList<Materia>();
		for( Serie serie : series) {
			List<Materia> materias = serie.getMaterias();
			for ( Materia serieMateria : materias) {
				if ( serieMateria.getId() != materia.getId()) {
					newMaterias.add(serieMateria);
				}
			}
			serie.setMaterias(newMaterias);
		}
		
		materiaDao.delete(materia);
		result.redirectTo(this).materias();
	}
}