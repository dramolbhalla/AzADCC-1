package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupZ1Dao;
import com.web.model.FollowupZ1;

@Repository
public class FollowupZ1DaoImpl implements FollowupZ1Dao{
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(FollowupZ1 followupz1) {
		session.getCurrentSession().save(followupz1);

	}

	@Override
	public void edit(FollowupZ1 followupz1) {
		session.getCurrentSession().update(followupz1);

	}

	@Override
	public void delete(int z1) {
		session.getCurrentSession().delete(getFollowupZ1(z1));

	}

	@Override
	public FollowupZ1 getFollowupZ1(int z1) {
		return (FollowupZ1)session.getCurrentSession().get(FollowupZ1.class, z1);
	}
	
	@Override
	public List getAllFollowupZ1() {
		return session.getCurrentSession().createQuery("from InitialZ1").list();
	}
}
