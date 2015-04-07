package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB5Dao;
import com.web.model.FollowupB5;
import com.web.service.FollowupA1Service;
import com.web.service.FollowupB5Service;

@Service
public class FollowupB5ServiceImpl implements FollowupB5Service{
	@Autowired
	private FollowupB5Dao followupb5Dao;

	@Transactional
	public void add(FollowupB5 followupb5) {
		followupb5Dao.add(followupb5);
		
	}

	@Transactional
	public void edit(FollowupB5 followupb5) {
		followupb5Dao.edit(followupb5);
		
	}

	@Transactional
	public void delete(int b5) {
		followupb5Dao.delete(b5);
		
	}

	@Transactional
	public FollowupB5 getFollowupB5(int b5) {
		
		return followupb5Dao.getFollowupB5(b5);
	}

	@Transactional
	public List getAllFollowupB5() {
		return followupb5Dao.getAllFollowupB5();
	}


}
