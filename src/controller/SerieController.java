package controller;

import java.util.ArrayList;
import java.util.List;

import model.Materia;
import model.Serie;
import dao.SerieDao;
import dao.MateriaDao;
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
	private MateriaDao materiaDao;
	
	public SerieController(Result result, SerieDao serieDao, MateriaDao materiaDao){
		this.result = result;
		this.serieDao = serieDao;
		this.materiaDao = materiaDao;
	}
	
	@Get("")
	public void series() {
		result.include("series", serieDao.list());
	}

	@Get("/new")
	public void formulario() {
		result.include("materias", materiaDao.list());
	}
	
	@Get("/{id}/edit")
	public void edit( Long id ) {
		result.include("serie", serieDao.load(id)).forwardTo(this).formulario();
	}
	
	@Get("/{id}/show")
	public void show( Long id ) {
		result.include("serie", serieDao.load(id));
	}
	
	@Post("")
	public void save( Serie serie, List<Long> idMaterias) {
		String message;
		try {
			List<Materia> listaDeMaterias = new ArrayList<Materia>();
			for (Long id : idMaterias) {
				Materia materia = materiaDao.load(id);
				listaDeMaterias.add(materia);
			}
			serie.setMaterias(listaDeMaterias);
			serieDao.save(serie);
			message = "Série adicionada com sucesso";

			result.include("message", message);
		} catch (Exception e) {
			message = "Erro ao tentar adicionar série";
		}
		result.include("message", message).redirectTo(this).series();
	}
	
	@Put("")
	public void update( Serie serie, List<Long> idMaterias ) {
		String message;
		try {
			List<Materia> listaDeMaterias = new ArrayList<Materia>();
			for (Long id : idMaterias) {
				Materia materia = materiaDao.load(id);
				listaDeMaterias.add(materia);
			}
			serie.setMaterias(listaDeMaterias);
			serieDao.update(serie);
			message = "Série editada com sucesso";

			result.include("message", message);
		} catch (Exception e) {
			message = "Erro ao tentar editar série";
		}
		result.include("message", message).redirectTo(this).series();
	}
	
	@Delete("/{id}")
	public void delete( Long id ) {
		model.Serie serie = serieDao.load(id);
		serieDao.delete(serie);
		result.redirectTo(this).series();
	}
}
