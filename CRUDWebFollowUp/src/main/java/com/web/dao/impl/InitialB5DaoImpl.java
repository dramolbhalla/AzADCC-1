package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB5Dao;
import com.web.model.InitialB5;

@Repository
public class InitialB5DaoImpl implements InitialB5Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB5 initialb5) {
		session.getCurrentSession().save(initialb5);
		
	}

	@Override
	public void edit(InitialB5 initialb5) {
		session.getCurrentSession().update(initialb5);
		
	}

	@Override
	public void delete(int b5) {
		session.getCurrentSession().delete(getInitialB5(b5));
		
	}

	@Override
	public InitialB5 getInitialB5(int b5) {
		return (InitialB5)session.getCurrentSession().get(InitialB5.class, b5);
	}

	@Override
	public List getAllInitialB5() {
		return session.getCurrentSession().createQuery("from InitialB5").list();
	}
}
