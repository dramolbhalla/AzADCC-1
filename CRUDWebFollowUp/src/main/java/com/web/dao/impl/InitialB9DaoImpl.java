package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB9Dao;
import com.web.model.InitialB9;

@Repository
public class InitialB9DaoImpl implements InitialB9Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB9 initialb9) {
		session.getCurrentSession().save(initialb9);
		
	}

	@Override
	public void edit(InitialB9 initialb9) {
		session.getCurrentSession().update(initialb9);
		
	}

	@Override
	public void delete(int b9) {
		session.getCurrentSession().delete(getInitialB9(b9));
		
	}

	@Override
	public InitialB9 getInitialB9(int b9) {
		return (InitialB9)session.getCurrentSession().get(InitialB9.class, b9);
	}

	@Override
	public List getAllInitialB9() {
		return session.getCurrentSession().createQuery("from InitialB9").list();
	}
}
