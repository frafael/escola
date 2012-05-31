package dao;

import java.util.List;

import model.Bimestre;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class BimestreDao {
	
	@Autowired
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Bimestre> list() {
		return getSession().createCriteria(Bimestre.class).list();
	}

	public Bimestre load(Long id) {
		return (Bimestre) getSession().load(Bimestre.class, id);
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