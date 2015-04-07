package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB1Dao;
import com.web.model.FollowupB1;


@Repository
public class FollowupB1DaoImpl implements FollowupB1Dao {
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB1 followupb1) {
		session.getCurrentSession().save(followupb1);
		
	}

	@Override
	public void edit(FollowupB1 followupb1) {
		session.getCurrentSession().update(followupb1);
		
	}

	@Override
	public void delete(int b1) {
		session.getCurrentSession().delete(getFollowupB1(b1));
		
	}

	@Override
	public FollowupB1 getFollowupB1(int b1) {
		return (FollowupB1)session.getCurrentSession().get(FollowupB1.class, b1);
	}

	@Override
	public List getAllFollowupB1() {
		return session.getCurrentSession().createQuery("from B1").list();
	}

}
