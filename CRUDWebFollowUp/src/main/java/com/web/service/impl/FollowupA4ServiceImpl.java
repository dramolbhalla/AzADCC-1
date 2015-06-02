package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.FollowupA4Dao;
import com.web.model.FollowupA4;
import com.web.service.FollowupA4Service;
@Service
public class FollowupA4ServiceImpl implements FollowupA4Service{
	
	@Autowired
	private FollowupA4Dao initiala4Dao;

	@Transactional
	public void add(FollowupA4 initiala4) {
		initiala4Dao.add(initiala4);
		
	}

	@Transactional
	public void edit(FollowupA4 initiala4) {
		initiala4Dao.edit(initiala4);
		
	}

	@Transactional
	public void delete(int a4) {
		initiala4Dao.delete(a4);
		
	}

	@Transactional
	public FollowupA4 getFollowupA4(int a4) {
		return initiala4Dao.getFollowupA4(a4);
	}

	@Transactional
	public List getAllFollowupA4() {
		return initiala4Dao.getAllFollowupA4();
	}

	

}
