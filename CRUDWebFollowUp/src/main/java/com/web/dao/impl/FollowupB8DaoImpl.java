package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB8Dao;
import com.web.model.FollowupB8;

@Repository
public class FollowupB8DaoImpl implements FollowupB8Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB8 followupb8) {
		session.getCurrentSession().save(followupb8);
		
	}

	@Override
	public void edit(FollowupB8 followupb8) {
		session.getCurrentSession().update(followupb8);
		
	}

	@Override
	public void delete(int b8) {
		session.getCurrentSession().delete(getFollowupB8(b8));
		
	}

	@Override
	public FollowupB8 getFollowupB8(int b8) {
		return (FollowupB8)session.getCurrentSession().get(FollowupB8.class, b8);
	}

	@Override
	public List getAllFollowupB8() {
		return session.getCurrentSession().createQuery("from B8").list();
	}
}

