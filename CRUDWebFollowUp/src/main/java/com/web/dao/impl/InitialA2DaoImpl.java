package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialA2Dao;
import com.web.model.InitialA2;
@Repository
public class InitialA2DaoImpl implements InitialA2Dao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialA2 initiala2) {
		System.out.println("From DAO : "+initiala2.getIneduc());
		session.getCurrentSession().save(initiala2);
		
	}

	@Override
	public void edit(InitialA2 initiala2) {
		session.getCurrentSession().update(initiala2);
		
	}

	@Override
	public void delete(int a2) {
		session.getCurrentSession().delete(getInitialA2(a2));
		
	}

	@Override
	public InitialA2 getInitialA2(int a2) {
		return (InitialA2)session.getCurrentSession().get(InitialA2.class, a2);
	}

	@Override
	public List getAllInitialA2() {
		return session.getCurrentSession().createQuery("from InitialA2").list();
	}

}

