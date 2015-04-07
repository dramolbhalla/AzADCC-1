package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupA1Dao;
import com.web.model.FollowupA1;
import com.web.service.FollowupA1Service;
@Service
public class FollowupA1ServiceImpl implements FollowupA1Service {
	@Autowired
	private FollowupA1Dao followupa1Dao;

	@Transactional
	public void add(FollowupA1 followupa1) {
		followupa1Dao.add(followupa1);

	}

	@Transactional
	public void edit(FollowupA1 followupa1) {
		followupa1Dao.edit(followupa1);

	}

	@Transactional
	public void delete(int a1) {
		followupa1Dao.delete(a1);

	}

	@Transactional
	public FollowupA1 getFollowupA1(int a1) {
		return followupa1Dao.getFollowupA1(a1);
		
	}

	@Transactional
	public List getAllFollowupA1() {
		return followupa1Dao.getAllFollowupA1();
		
	}

}
