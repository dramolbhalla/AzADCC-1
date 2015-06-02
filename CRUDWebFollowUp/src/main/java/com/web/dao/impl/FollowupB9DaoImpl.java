package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB9Dao;
import com.web.model.FollowupB9;

@Repository
public class FollowupB9DaoImpl implements FollowupB9Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB9 followupb9) {
		session.getCurrentSession().save(followupb9);
		
	}

	@Override
	public void edit(FollowupB9 followupb9) {
		session.getCurrentSession().update(followupb9);
		
	}

	@Override
	public void delete(int b9) {
		session.getCurrentSession().delete(getFollowupB9(b9));
		
	}

	@Override
	public FollowupB9 getFollowupB9(int b9) {
		return (FollowupB9)session.getCurrentSession().get(FollowupB9.class, b9);
	}

	@Override
	public List getAllFollowupB9() {
		return session.getCurrentSession().createQuery("from FollowupB9").list();
	}
}
