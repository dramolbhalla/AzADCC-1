package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB6Dao;
import com.web.model.FollowupB6;
import com.web.service.FollowupB6Service;

@Service
public class FollowupB6ServiceImpl implements FollowupB6Service {
	@Autowired
	private FollowupB6Dao followupb6Dao;

	@Transactional
	public void add(FollowupB6 followupb6) {
		
		followupb6Dao.add(followupb6);
		
	}

	@Transactional
	public void edit(FollowupB6 followupb6) {
		followupb6Dao.edit(followupb6);
		
	}

	@Transactional
	public void delete(int b6) {
		followupb6Dao.delete(b6);
		
	}

	@Transactional
	public FollowupB6 getFollowupB6(int b6) {
		
		return followupb6Dao.getFollowupB6(b6);
	}

	@Transactional
	public List getAllFollowupB6() {
		return followupb6Dao.getAllFollowupB6();
	}

}
