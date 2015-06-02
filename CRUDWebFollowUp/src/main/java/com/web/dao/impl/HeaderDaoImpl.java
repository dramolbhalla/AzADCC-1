package com.web.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.HeaderDao;
import com.web.model.Header;

@Repository
public class HeaderDaoImpl implements HeaderDao
{
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Header header) {
		session.getCurrentSession().save(header);

	}

	@Override
	public void edit(Header header) {
		session.getCurrentSession().update(header);

	}

//	@Override
//	public void delete(int z1) {
//		session.getCurrentSession().delete(getFollowupZ1(z1));
//
//	}

//	@Override
//	public FollowupZ1 getFollowupZ1(int z1) {
//		return (FollowupZ1)session.getCurrentSession().get(FollowupZ1.class, z1);
//	}
	
	@Override
	public List getAllHeader() {
		return session.getCurrentSession().createQuery("from Header").list();
	}
}
