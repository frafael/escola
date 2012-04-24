package dao;

import java.util.List;

import model.Materia;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class MateriaDao {
	
	@Autowired
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Materia> list() {
		return getSession().createCriteria(Materia.class).list();
	}

	public Materia load(Long id) {
		return (Materia) getSession().load(Materia.class, id);
	}
	
	public Session getSession() {
		return session;
	}

	public void save(Object object) {
		getSession().save(object);
	}
		
	public void update(Object object) {
		getSession().merge(object);
	}

	public void delete(Object object) {
		getSession().delete(object);
	}
}