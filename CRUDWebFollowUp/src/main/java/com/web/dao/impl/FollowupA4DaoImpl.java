package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupA4Dao;
import com.web.model.FollowupA4;
@Repository
public class FollowupA4DaoImpl implements FollowupA4Dao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupA4 initiala4) {
		session.getCurrentSession().save(initiala4);
		
	}

	@Override
	public void edit(FollowupA4 initiala4) {
		session.getCurrentSession().update(initiala4);
		
	}

	@Override
	public void delete(int a4) {
		session.getCurrentSession().delete(getFollowupA4(a4));
		
	}

	@Override
	public FollowupA4 getFollowupA4(int a4) {
		return (FollowupA4)session.getCurrentSession().get(FollowupA4.class, a4);
	}

	@Override
	public List getAllFollowupA4() {
		return session.getCurrentSession().createQuery("from initialA4").list();
	}

}
