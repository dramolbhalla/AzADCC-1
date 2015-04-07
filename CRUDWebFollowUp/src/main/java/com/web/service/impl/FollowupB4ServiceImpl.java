package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupB4Dao;
import com.web.model.FollowupB4;
import com.web.service.FollowupB4Service;

@Service
public class FollowupB4ServiceImpl implements FollowupB4Service {
	@Autowired
	private FollowupB4Dao followupb4Dao;

	@Transactional
	public void add(FollowupB4 followupb4) {
		followupb4Dao.add(followupb4);
		
	}

	@Transactional
	public void edit(FollowupB4 followupb4) {
		followupb4Dao.edit(followupb4);
		
	}

	@Transactional
	public void delete(int b4) {
		followupb4Dao.delete(b4);
		
	}

	@Transactional
	public FollowupB4 getFollowupB4(int b4) {
		
		return followupb4Dao.getFollowupB4(b4);
	}

	@Transactional
	public List getAllFollowupB4() {
		return followupb4Dao.getAllFollowupB4();
	}


}
