package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupD2Dao;
import com.web.model.FollowupD2;
import com.web.service.FollowupD2Service;

@Service
public class FollowupD2ServiceImpl implements FollowupD2Service {
	@Autowired
	private FollowupD2Dao followupd2Dao;

	@Transactional
	public void add(FollowupD2 followupd2) {
		followupd2Dao.add(followupd2);
		
	}

	@Transactional
	public void edit(FollowupD2 followupd2) {
		followupd2Dao.edit(followupd2);
		
	}

	@Transactional
	public void delete(int d2) {
		followupd2Dao.delete(d2);
		
	}

	@Transactional
	public FollowupD2 getFollowupD2(int d2) {
		
		return followupd2Dao.getFollowupD2(d2);
	}

	@Transactional
	public List getAllFollowupD2() {
		return followupd2Dao.getAllFollowupD2();
	}

}

