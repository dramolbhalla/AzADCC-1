package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupC2Dao;
import com.web.model.FollowupC2;
import com.web.service.FollowupC2Service;

@Service
public class FollowupC2ServiceImpl implements FollowupC2Service {
	@Autowired
	private FollowupC2Dao followupc2Dao;

	@Transactional
	public void add(FollowupC2 followupc2) {
		followupc2Dao.add(followupc2);
		
	}

	@Transactional
	public void edit(FollowupC2 followupc2) {
		followupc2Dao.edit(followupc2);
		
	}

	@Transactional
	public void delete(int c2) {
		followupc2Dao.delete(c2);
		
	}

	@Transactional
	public FollowupC2 getFollowupC2(int c2) {
		
		return followupc2Dao.getFollowupC2(c2);
	}

	@Transactional
	public List getAllFollowupC2() {
		return followupc2Dao.getAllFollowupC2();
	}

}

