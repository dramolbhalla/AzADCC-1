package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupD2Dao;
import com.web.model.FollowupD2;

@Repository
public class FollowupD2DaoImpl implements FollowupD2Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupD2 followupd2) {
		session.getCurrentSession().save(followupd2);
		
	}

	@Override
	public void edit(FollowupD2 followupd2) {
		session.getCurrentSession().update(followupd2);
		
	}

	@Override
	public void delete(int d2) {
		session.getCurrentSession().delete(getFollowupD2(d2));
		
	}

	@Override
	public FollowupD2 getFollowupD2(int d2) {
		return (FollowupD2)session.getCurrentSession().get(FollowupD2.class, d2);
	}

	@Override
	public List getAllFollowupD2() {
		return session.getCurrentSession().createQuery("from FollowupD2").list();
	}
}
