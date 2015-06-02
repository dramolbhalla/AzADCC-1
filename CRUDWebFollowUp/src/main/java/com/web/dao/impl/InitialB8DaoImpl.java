package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB8Dao;
import com.web.model.InitialB8;

@Repository
public class InitialB8DaoImpl implements InitialB8Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB8 initialb8) {
		session.getCurrentSession().save(initialb8);
		
	}

	@Override
	public void edit(InitialB8 initialb8) {
		session.getCurrentSession().update(initialb8);
		
	}

	@Override
	public void delete(int b8) {
		session.getCurrentSession().delete(getInitialB8(b8));
		
	}

	@Override
	public InitialB8 getInitialB8(int b8) {
		return (InitialB8)session.getCurrentSession().get(InitialB8.class, b8);
	}

	@Override
	public List getAllInitialB8() {
		return session.getCurrentSession().createQuery("from InitialB8").list();
	}
}

