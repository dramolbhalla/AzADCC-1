package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupZ1Dao;
import com.web.model.FollowupZ1;
import com.web.service.FollowupZ1Service;

@Service
public class FollowupZ1ServiceImpl implements FollowupZ1Service {

	@Autowired
	private FollowupZ1Dao FollowupZ1Dao;

	@Transactional
	public void add(FollowupZ1 followupz1) {
		FollowupZ1Dao.add(followupz1);

	}

	@Transactional
	public void edit(FollowupZ1 followupz1) {
		FollowupZ1Dao.edit(followupz1);

	}

	@Transactional
	public void delete(int z1) {
		FollowupZ1Dao.delete(z1);

	}

	@Transactional
	public FollowupZ1 getFollowupZ1(int z1) {
		return FollowupZ1Dao.getFollowupZ1(z1);
		
	}

	@Transactional
	public List getAllFollowupZ1() {
		return FollowupZ1Dao.getAllFollowupZ1();
		
	}

}
