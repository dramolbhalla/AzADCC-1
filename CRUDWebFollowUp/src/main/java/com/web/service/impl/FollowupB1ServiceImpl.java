package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB1Dao;
import com.web.model.FollowupB1;
import com.web.service.FollowupB1Service;

@Service
public class FollowupB1ServiceImpl implements FollowupB1Service {
	@Autowired
	private FollowupB1Dao followupb1Dao;

	@Transactional
	public void add(FollowupB1 followupb1) {
		followupb1Dao.add(followupb1);
		
	}

	@Transactional
	public void edit(FollowupB1 followupb1) {
		followupb1Dao.edit(followupb1);
		
	}

	@Transactional
	public void delete(int b1) {
		followupb1Dao.delete(b1);
		
	}

	@Transactional
	public FollowupB1 getFollowupB1(int b1) {
		
		return followupb1Dao.getFollowupB1(b1);
	}

	@Transactional
	public List getAllFollowupB1() {
		return followupb1Dao.getAllFollowupB1();
	}

}
