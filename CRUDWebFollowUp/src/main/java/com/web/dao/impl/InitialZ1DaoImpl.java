package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialZ1Dao;
import com.web.model.InitialZ1;

@Repository
public class InitialZ1DaoImpl implements InitialZ1Dao 
{
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(InitialZ1 Initialz1) {
		session.getCurrentSession().save(Initialz1);

	}

	@Override
	public void edit(InitialZ1 Initialz1) {
		session.getCurrentSession().update(Initialz1);

	}

	@Override
	public void delete(int z1) {
		session.getCurrentSession().delete(getInitialZ1(z1));

	}

	@Override
	public InitialZ1 getInitialZ1(int z1) {
		return (InitialZ1)session.getCurrentSession().get(InitialZ1.class, z1);
	}
	
	@Override
	public List getAllInitialZ1() {
		return session.getCurrentSession().createQuery("from InitialZ1").list();
	}
}
