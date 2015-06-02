package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB1Dao;
import com.web.model.InitialB1;


@Repository
public class InitialB1DaoImpl implements InitialB1Dao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB1 initialb1) {
		session.getCurrentSession().save(initialb1);
		
	}

	@Override
	public void edit(InitialB1 initialb1) {
		session.getCurrentSession().update(initialb1);
		
	}

	@Override
	public void delete(int b1) {
		session.getCurrentSession().delete(getInitialB1(b1));
		
	}

	@Override
	public InitialB1 getInitialB1(int b1) {
		return (InitialB1)session.getCurrentSession().get(InitialB1.class, b1);
	}

	@Override
	public List getAllInitialB1() {
		return session.getCurrentSession().createQuery("from InitialB1").list();
	}

}
