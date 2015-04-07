package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB7Dao;
import com.web.model.FollowupB7;
import com.web.service.FollowupB7Service;

@Service
public class FollowupB7ServiceImpl implements FollowupB7Service {
	@Autowired
	private FollowupB7Dao followupb7Dao;

	@Transactional
	public void add(FollowupB7 followupb7) {
		followupb7Dao.add(followupb7);
		
	}

	@Transactional
	public void edit(FollowupB7 followupb7) {
		followupb7Dao.edit(followupb7);
		
	}

	@Transactional
	public void delete(int b7) {
		followupb7Dao.delete(b7);
		
	}

	@Transactional
	public FollowupB7 getFollowupB7(int b7) {
		
		return followupb7Dao.getFollowupB7(b7);
	}

	@Transactional
	public List getAllFollowupB7() {
		return followupb7Dao.getAllFollowupB7();
	}

}

