package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialD2Dao;
import com.web.model.InitialD2;

@Repository
public class InitialD2DaoImpl implements InitialD2Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialD2 initiald2) {
		session.getCurrentSession().save(initiald2);
		
	}

	@Override
	public void edit(InitialD2 initiald2) {
		session.getCurrentSession().update(initiald2);
		
	}

	@Override
	public void delete(int d2) {
		session.getCurrentSession().delete(getInitialD2(d2));
		
	}

	@Override
	public InitialD2 getInitialD2(int d2) {
		return (InitialD2)session.getCurrentSession().get(InitialD2.class, d2);
	}

	@Override
	public List getAllInitialD2() {
		return session.getCurrentSession().createQuery("from InitialD2").list();
	}
}
