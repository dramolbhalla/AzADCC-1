package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupA3Dao;
import com.web.model.FollowupA3;
@Repository
public class FollowupA3DaoImpl implements FollowupA3Dao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupA3 followupa3) {
		session.getCurrentSession().save(followupa3);
		
	}

	@Override
	public void edit(FollowupA3 followupa3) {
		session.getCurrentSession().update(followupa3);
		
	}

	@Override
	public void delete(int a3) {
		session.getCurrentSession().delete(getFollowupA3(a3));
		
	}

	@Override
	public FollowupA3 getFollowupA3(int a3) {
		return (FollowupA3)session.getCurrentSession().get(FollowupA3.class, a3);
	}

	@Override
	public List getAllFollowupA3() {
		return session.getCurrentSession().createQuery("from followupA3").list();
	}

}
