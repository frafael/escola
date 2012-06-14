package dao;

import java.util.List;

import model.Professor;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class ProfessorDao {
	
	@Autowired
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Professor> list() {
		return getSession().createCriteria(Professor.class).list();
	}

	public Professor load(Long id) {
		return (Professor) getSession().load(Professor.class, id);
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