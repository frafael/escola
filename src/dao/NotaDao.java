package dao;

import java.util.List;

import model.Nota;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class NotaDao {
	
	@Autowired
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Nota> list() {
		return getSession().createCriteria(Nota.class).list();
	}

	public Nota load(Long id) {
		return (Nota) getSession().load(Nota.class, id);
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