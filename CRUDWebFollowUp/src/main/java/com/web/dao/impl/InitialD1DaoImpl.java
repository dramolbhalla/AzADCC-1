package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialD1Dao;
import com.web.model.InitialD1;

@Repository
public class InitialD1DaoImpl implements InitialD1Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialD1 initiald1) {
		session.getCurrentSession().save(initiald1);
		
	}

	@Override
	public void edit(InitialD1 initiald1) {
		session.getCurrentSession().update(initiald1);
		
	}

	@Override
	public void delete(int d1) {
		session.getCurrentSession().delete(getInitialD1(d1));
		
	}

	@Override
	public InitialD1 getInitialD1(int d1) {
		return (InitialD1)session.getCurrentSession().get(InitialD1.class, d1);
	}

	@Override
	public List getAllInitialD1() {
		return session.getCurrentSession().createQuery("from InitialD1").list();
	}
}
