package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialA3Dao;
import com.web.model.InitialA3;
@Repository
public class InitialA3DaoImpl implements InitialA3Dao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialA3 initiala3) {
		session.getCurrentSession().save(initiala3);
		
	}

	@Override
	public void edit(InitialA3 initiala3) {
		session.getCurrentSession().update(initiala3);
		
	}

	@Override
	public void delete(int a3) {
		session.getCurrentSession().delete(getInitialA3(a3));
		
	}

	@Override
	public InitialA3 getInitialA3(int a3) {
		return (InitialA3)session.getCurrentSession().get(InitialA3.class, a3);
	}

	@Override
	public List getAllInitialA3() {
		return session.getCurrentSession().createQuery("from initialA3").list();
	}

}
