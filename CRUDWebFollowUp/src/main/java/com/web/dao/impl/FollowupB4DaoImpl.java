package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupB4Dao;
import com.web.model.FollowupB4;
@Repository
public class FollowupB4DaoImpl implements FollowupB4Dao{
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupB4 followupb4) {
		session.getCurrentSession().save(followupb4);
		
	}

	@Override
	public void edit(FollowupB4 followupb4) {
		session.getCurrentSession().update(followupb4);
		
	}

	@Override
	public void delete(int b4) {
		session.getCurrentSession().delete(getFollowupB4(b4));
		
	}

	@Override
	public FollowupB4 getFollowupB4(int b4) {
		return (FollowupB4)session.getCurrentSession().get(FollowupB4.class, b4);
	}

	@Override
	public List getAllFollowupB4() {
		return session.getCurrentSession().createQuery("from FollowupB4").list();
	}

}
