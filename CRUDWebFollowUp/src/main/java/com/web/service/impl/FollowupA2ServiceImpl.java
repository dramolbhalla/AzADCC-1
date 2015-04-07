package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupA2Dao;
import com.web.model.FollowupA2;
import com.web.service.FollowupA2Service;

@Service
public class FollowupA2ServiceImpl implements FollowupA2Service {
	@Autowired
	private FollowupA2Dao followupa2Dao;

	@Transactional
	public void add(FollowupA2 followupa2) {
		followupa2Dao.add(followupa2);
		
	}

	@Transactional
	public void edit(FollowupA2 followupa2) {
		followupa2Dao.edit(followupa2);
		
	}

	@Transactional
	public void delete(int a2) {
		followupa2Dao.delete(a2);
		
	}

	@Transactional
	public FollowupA2 getFollowupA2(int a2) {
		return followupa2Dao.getFollowupA2(a2);
	}

	@Transactional
	public List getAllFollowupA2() {
		return followupa2Dao.getAllFollowupA2();
	}

}
