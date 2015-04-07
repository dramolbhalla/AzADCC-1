package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupC1Dao;
import com.web.model.FollowupC1;
import com.web.service.FollowupC1Service;

@Service
public class FollowupC1ServiceImpl implements FollowupC1Service {
	@Autowired
	private FollowupC1Dao followupc1Dao;

	@Transactional
	public void add(FollowupC1 followupc1) {
		followupc1Dao.add(followupc1);
		
	}

	@Transactional
	public void edit(FollowupC1 followupc1) {
		followupc1Dao.edit(followupc1);
		
	}

	@Transactional
	public void delete(int c1) {
		followupc1Dao.delete(c1);
		
	}

	@Transactional
	public FollowupC1 getFollowupC1(int c1) {
		
		return followupc1Dao.getFollowupC1(c1);
	}

	@Transactional
	public List getAllFollowupC1() {
		return followupc1Dao.getAllFollowupC1();
	}

}
