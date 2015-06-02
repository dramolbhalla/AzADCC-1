package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.InitialB4Dao;
import com.web.model.InitialB4;
@Repository
public class InitialB4DaoImpl implements InitialB4Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(InitialB4 initialb4) {
		session.getCurrentSession().save(initialb4);
		
	}

	@Override
	public void edit(InitialB4 initialb4) {
		session.getCurrentSession().update(initialb4);
		
	}

	@Override
	public void delete(int b4) {
		session.getCurrentSession().delete(getInitialB4(b4));
		
	}

	@Override
	public InitialB4 getInitialB4(int b4) {
		return (InitialB4)session.getCurrentSession().get(InitialB4.class, b4);
	}

	@Override
	public List getAllInitialB4() {
		return session.getCurrentSession().createQuery("from InitialB4").list();
	}

}
