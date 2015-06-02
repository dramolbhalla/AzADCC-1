package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialA5Dao;
import com.web.model.InitialA5;
@Repository
public class InitialA5DaoImpl implements InitialA5Dao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialA5 initiala5) {
		session.getCurrentSession().save(initiala5);

	}

	@Override
	public void edit(InitialA5 initiala5) {
		session.getCurrentSession().update(initiala5);

	}

	@Override
	public void delete(int a5) {
		session.getCurrentSession().delete(getInitialA5(a5));

	}

	@Override
	public InitialA5 getInitialA5(int a5) {
		return (InitialA5)session.getCurrentSession().get(InitialA5.class, a5);
	}
	
	@Override
	public List getAllInitialA5() {
		return session.getCurrentSession().createQuery("from InitialA5").list();
	}

}
