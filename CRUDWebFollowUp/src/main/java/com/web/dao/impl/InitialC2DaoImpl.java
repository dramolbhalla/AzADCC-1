package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialC2Dao;
import com.web.model.InitialC2;

@Repository
public class InitialC2DaoImpl implements InitialC2Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialC2 initialc2) {
		session.getCurrentSession().save(initialc2);
		
	}

	@Override
	public void edit(InitialC2 initialc2) {
		session.getCurrentSession().update(initialc2);
		
	}

	@Override
	public void delete(int c2) {
		session.getCurrentSession().delete(getInitialC2(c2));
		
	}

	@Override
	public InitialC2 getInitialC2(int c2) {
		return (InitialC2)session.getCurrentSession().get(InitialC2.class, c2);
	}

	@Override
	public List getAllInitialC2() {
		return session.getCurrentSession().createQuery("from InitialC2").list();
	}
}