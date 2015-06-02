package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupA2Dao;
import com.web.model.FollowupA2;

@Repository
public class FollowupA2DaoImpl implements FollowupA2Dao 
{

	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(FollowupA2 followupA2) {
		session.getCurrentSession().save(followupA2);
		
	}

	@Override
	public void edit(FollowupA2 followupA2) {
		session.getCurrentSession().update(followupA2);
		
	}

	@Override
	public void delete(int a2) {
		session.getCurrentSession().delete(getFollowupA2(a2));
		
	}

	@Override
	public FollowupA2 getFollowupA2(int a2) 
	{
		return (FollowupA2)session.getCurrentSession().get(FollowupA2.class, a2);
	}

	@Override
	public List getAllFollowupA2() {
		return session.getCurrentSession().createQuery("from FollowupA2").list();
	}
}
