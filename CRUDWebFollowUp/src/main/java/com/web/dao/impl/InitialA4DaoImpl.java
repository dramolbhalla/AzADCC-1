package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialA4Dao;
import com.web.model.InitialA4;
@Repository
public class InitialA4DaoImpl implements InitialA4Dao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialA4 initiala4) {
		session.getCurrentSession().save(initiala4);
		
	}

	@Override
	public void edit(InitialA4 initiala4) {
		session.getCurrentSession().update(initiala4);
		
	}

	@Override
	public void delete(int a4) {
		session.getCurrentSession().delete(getInitialA4(a4));
		
	}

	@Override
	public InitialA4 getInitialA4(int a4) {
		return (InitialA4)session.getCurrentSession().get(InitialA4.class, a4);
	}

	@Override
	public List getAllInitialA4() {
		return session.getCurrentSession().createQuery("from initialA4").list();
	}

}
