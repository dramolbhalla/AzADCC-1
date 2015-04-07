package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB8Dao;
import com.web.model.FollowupB8;
import com.web.service.FollowupB8Service;

@Service
public class FollowupB8ServiceImpl implements FollowupB8Service {
	@Autowired
	private FollowupB8Dao followupb8Dao;

	@Transactional
	public void add(FollowupB8 followupb8) {
		followupb8Dao.add(followupb8);
		
	}

	@Transactional
	public void edit(FollowupB8 followupb8) {
		followupb8Dao.edit(followupb8);
		
	}

	@Transactional
	public void delete(int b8) {
		followupb8Dao.delete(b8);
		
	}

	@Transactional
	public FollowupB8 getFollowupB8(int b8) {
		
		return followupb8Dao.getFollowupB8(b8);
	}

	@Transactional
	public List getAllFollowupB8() {
		return followupb8Dao.getAllFollowupB8();
	}

}

