package dao;

import java.util.List;

import model.Aluno;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.RequestScoped;

@Component @RequestScoped
public class AlunoDao {
	
	@Autowired
	private Session session;
	
	@SuppressWarnings("unchecked")
	public List<Aluno> list() {
		return getSession().createCriteria(Aluno.class).list();
	}

	public Aluno load(Long id) {
		return (Aluno) getSession().load(Aluno.class, id);
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