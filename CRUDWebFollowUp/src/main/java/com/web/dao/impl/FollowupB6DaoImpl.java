package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB6Dao;
import com.web.model.FollowupB6;

@Repository
public class FollowupB6DaoImpl implements FollowupB6Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB6 followupb6) {
		session.getCurrentSession().save(followupb6);
		
	}

	@Override
	public void edit(FollowupB6 followupb6) {
		session.getCurrentSession().update(followupb6);
		
	}

	@Override
	public void delete(int b6) {
		session.getCurrentSession().delete(getFollowupB6(b6));
		
	}

	@Override
	public FollowupB6 getFollowupB6(int b6) {
		return (FollowupB6)session.getCurrentSession().get(FollowupB6.class, b6);
	}

	@Override
	public List getAllFollowupB6() {
		return session.getCurrentSession().createQuery("from B6").list();
	}
}
