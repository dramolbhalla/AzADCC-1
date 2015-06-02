package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB7Dao;
import com.web.model.FollowupB7;

@Repository
public class FollowupB7DaoImpl implements FollowupB7Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB7 followupb7) {
		session.getCurrentSession().save(followupb7);
		
	}

	@Override
	public void edit(FollowupB7 followupb7) {
		session.getCurrentSession().update(followupb7);
		
	}

	@Override
	public void delete(int b7) {
		session.getCurrentSession().delete(getFollowupB7(b7));
		
	}

	@Override
	public FollowupB7 getFollowupB7(int b7) {
		return (FollowupB7)session.getCurrentSession().get(FollowupB7.class, b7);
	}

	@Override
	public List getAllFollowupB7() {
		return session.getCurrentSession().createQuery("from FollowupB7").list();
	}
}
