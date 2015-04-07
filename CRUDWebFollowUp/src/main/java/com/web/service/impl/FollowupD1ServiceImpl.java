package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupD1Dao;
import com.web.model.FollowupD1;
import com.web.service.FollowupD1Service;

@Service
public class FollowupD1ServiceImpl implements FollowupD1Service {
	@Autowired
	private FollowupD1Dao followupd1Dao;

	@Transactional
	public void add(FollowupD1 followupd1) {
		followupd1Dao.add(followupd1);
		
	}

	@Transactional
	public void edit(FollowupD1 followupd1) {
		followupd1Dao.edit(followupd1);
		
	}

	@Transactional
	public void delete(int d1) {
		followupd1Dao.delete(d1);
		
	}

	@Transactional
	public FollowupD1 getFollowupD1(int d1) {
		
		return followupd1Dao.getFollowupD1(d1);
	}

	@Transactional
	public List getAllFollowupD1() {
		return followupd1Dao.getAllFollowupD1();
	}

}
