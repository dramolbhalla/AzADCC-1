package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupC1Dao;
import com.web.model.FollowupC1;

@Repository
public class FollowupC1DaoImpl implements FollowupC1Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupC1 followupc1) {
		session.getCurrentSession().save(followupc1);
		
	}

	@Override
	public void edit(FollowupC1 followupc1) {
		session.getCurrentSession().update(followupc1);
		
	}

	@Override
	public void delete(int c1) {
		session.getCurrentSession().delete(getFollowupC1(c1));
		
	}

	@Override
	public FollowupC1 getFollowupC1(int c1) {
		return (FollowupC1)session.getCurrentSession().get(FollowupC1.class, c1);
	}

	@Override
	public List getAllFollowupC1() {
		return session.getCurrentSession().createQuery("from FollowupC1").list();
	}
}

