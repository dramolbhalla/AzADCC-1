package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB7Dao;
import com.web.model.InitialB7;

@Repository
public class InitialB7DaoImpl implements InitialB7Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB7 initialb7) {
		session.getCurrentSession().save(initialb7);
		
	}

	@Override
	public void edit(InitialB7 initialb7) {
		session.getCurrentSession().update(initialb7);
		
	}

	@Override
	public void delete(int b7) {
		session.getCurrentSession().delete(getInitialB7(b7));
		
	}

	@Override
	public InitialB7 getInitialB7(int b7) {
		return (InitialB7)session.getCurrentSession().get(InitialB7.class, b7);
	}

	@Override
	public List getAllInitialB7() {
		return session.getCurrentSession().createQuery("from InitialB7").list();
	}
}
