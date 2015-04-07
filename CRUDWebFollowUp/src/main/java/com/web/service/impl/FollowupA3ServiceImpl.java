package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupA3Dao;
import com.web.model.FollowupA3;
import com.web.service.FollowupA3Service;
@Service
public class FollowupA3ServiceImpl implements FollowupA3Service{
	
	@Autowired
	private FollowupA3Dao followupa3Dao;

	@Transactional
	public void add(FollowupA3 followupa3) {
		followupa3Dao.add(followupa3);
		
	}

	@Transactional
	public void edit(FollowupA3 followupa3) {
		followupa3Dao.edit(followupa3);
		
	}

	@Transactional
	public void delete(int a3) {
		followupa3Dao.delete(a3);
		
	}

	@Transactional
	public FollowupA3 getFollowupA3(int a3) {
		return followupa3Dao.getFollowupA3(a3);
	}

	@Transactional
	public List getAllFollowupA3() {
		return followupa3Dao.getAllFollowupA3();
	}

	

}
