package dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class aluno {
	@SuppressWarnings("unchecked")
	public List<model.aluno> list() {
		return getSession().createCriteria(model.aluno.class).list();
	}

	public model.aluno load(Long id) {
		return (model.aluno) getSession().load(model.aluno.class, id);
	}
	
	@Autowired
	private Session session;
	
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
