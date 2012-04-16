package dao;

import java.util.List;

import model.Serie;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class SerieDao {
	
	@Autowired
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Serie> list() {
		return getSession().createCriteria(Serie.class).list();
	}

	public Serie load(Long id) {
		return (Serie) getSession().load(Serie.class, id);
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
