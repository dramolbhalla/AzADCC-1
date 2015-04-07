package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupA1Dao;
import com.web.model.FollowupA1;
@Repository
public class FollowupA1DaoImpl implements FollowupA1Dao {
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupA1 followupa1) {
		session.getCurrentSession().save(followupa1);

	}

	@Override
	public void edit(FollowupA1 followupa1) {
		session.getCurrentSession().update(followupa1);

	}

	@Override
	public void delete(int a1) {
		session.getCurrentSession().delete(getFollowupA1(a1));

	}

	@Override
	public FollowupA1 getFollowupA1(int a1) {
		return (FollowupA1)session.getCurrentSession().get(FollowupA1.class, a1);
	}
	
	@Override
	public List getAllFollowupA1() {
		return session.getCurrentSession().createQuery("from followupA1").list();
	}

}
