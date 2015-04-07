package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupC2Dao;
import com.web.model.FollowupC2;

@Repository
public class FollowupC2DaoImpl implements FollowupC2Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupC2 followupc2) {
		session.getCurrentSession().save(followupc2);
		
	}

	@Override
	public void edit(FollowupC2 followupc2) {
		session.getCurrentSession().update(followupc2);
		
	}

	@Override
	public void delete(int c2) {
		session.getCurrentSession().delete(getFollowupC2(c2));
		
	}

	@Override
	public FollowupC2 getFollowupC2(int c2) {
		return (FollowupC2)session.getCurrentSession().get(FollowupC2.class, c2);
	}

	@Override
	public List getAllFollowupC2() {
		return session.getCurrentSession().createQuery("from C2").list();
	}
}