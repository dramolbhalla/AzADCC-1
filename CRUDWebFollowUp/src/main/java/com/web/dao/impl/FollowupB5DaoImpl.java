package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB5Dao;
import com.web.model.FollowupB5;

@Repository
public class FollowupB5DaoImpl implements FollowupB5Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB5 followupb5) {
		session.getCurrentSession().save(followupb5);
		
	}

	@Override
	public void edit(FollowupB5 followupb5) {
		session.getCurrentSession().update(followupb5);
		
	}

	@Override
	public void delete(int b5) {
		session.getCurrentSession().delete(getFollowupB5(b5));
		
	}

	@Override
	public FollowupB5 getFollowupB5(int b5) {
		return (FollowupB5)session.getCurrentSession().get(FollowupB5.class, b5);
	}

	@Override
	public List getAllFollowupB5() {
		return session.getCurrentSession().createQuery("from FollowupB5").list();
	}
}
