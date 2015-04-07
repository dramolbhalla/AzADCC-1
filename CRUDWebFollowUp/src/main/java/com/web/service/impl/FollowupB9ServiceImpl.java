package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB9Dao;
import com.web.model.FollowupB9;
import com.web.service.FollowupB9Service;

@Service
public class FollowupB9ServiceImpl implements FollowupB9Service {
	@Autowired
	private FollowupB9Dao followupb9Dao;

	@Transactional
	public void add(FollowupB9 followupb9) {
		followupb9Dao.add(followupb9);
		
	}

	@Transactional
	public void edit(FollowupB9 followupb9) {
		followupb9Dao.edit(followupb9);
		
	}

	@Transactional
	public void delete(int b9) {
		followupb9Dao.delete(b9);
		
	}

	@Transactional
	public FollowupB9 getFollowupB9(int b9) {
		
		return followupb9Dao.getFollowupB9(b9);
	}

	@Transactional
	public List getAllFollowupB9() {
		return followupb9Dao.getAllFollowupB9();
	}

}
