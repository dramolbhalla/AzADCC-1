package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB6Dao;
import com.web.model.InitialB6;

@Repository
public class InitialB6DaoImpl implements InitialB6Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB6 initialb6) {
		session.getCurrentSession().save(initialb6);
		
	}

	@Override
	public void edit(InitialB6 initialb6) {
		session.getCurrentSession().update(initialb6);
		
	}

	@Override
	public void delete(int b6) {
		session.getCurrentSession().delete(getInitialB6(b6));
		
	}

	@Override
	public InitialB6 getInitialB6(int b6) {
		return (InitialB6)session.getCurrentSession().get(InitialB6.class, b6);
	}

	@Override
	public List getAllInitialB6() {
		return session.getCurrentSession().createQuery("from InitialB6").list();
	}
}
