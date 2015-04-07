package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupD1Dao;
import com.web.model.FollowupD1;

@Repository
public class FollowupD1DaoImpl implements FollowupD1Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupD1 followupd1) {
		session.getCurrentSession().save(followupd1);
		
	}

	@Override
	public void edit(FollowupD1 followupd1) {
		session.getCurrentSession().update(followupd1);
		
	}

	@Override
	public void delete(int d1) {
		session.getCurrentSession().delete(getFollowupD1(d1));
		
	}

	@Override
	public FollowupD1 getFollowupD1(int d1) {
		return (FollowupD1)session.getCurrentSession().get(FollowupD1.class, d1);
	}

	@Override
	public List getAllFollowupD1() {
		return session.getCurrentSession().createQuery("from D1").list();
	}
}
