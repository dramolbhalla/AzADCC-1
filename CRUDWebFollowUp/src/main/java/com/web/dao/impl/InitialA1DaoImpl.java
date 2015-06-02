package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialA1Dao;
import com.web.model.InitialA1;
@Repository
public class InitialA1DaoImpl implements InitialA1Dao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialA1 initiala1) {
		session.getCurrentSession().save(initiala1);

	}

	@Override
	public void edit(InitialA1 initiala1) {
		session.getCurrentSession().update(initiala1);

	}

	@Override
	public void delete(int a1) {
		session.getCurrentSession().delete(getInitialA1(a1));

	}

	@Override
	public InitialA1 getInitialA1(int a1) {
		return (InitialA1)session.getCurrentSession().get(InitialA1.class, a1);
	}
	
	@Override
	public List getAllInitialA1() {
		return session.getCurrentSession().createQuery("from InitialA1").list();
	}

}
