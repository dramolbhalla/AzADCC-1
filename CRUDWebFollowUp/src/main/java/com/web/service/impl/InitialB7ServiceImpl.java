package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB7Dao;
import com.web.model.InitialB7;
import com.web.service.InitialB7Service;

@Service
public class InitialB7ServiceImpl implements InitialB7Service {
	@Autowired
	private InitialB7Dao followupb7Dao;

	@Transactional
	public void add(InitialB7 followupb7) {
		followupb7Dao.add(followupb7);
		
	}

	@Transactional
	public void edit(InitialB7 followupb7) {
		followupb7Dao.edit(followupb7);
		
	}

	@Transactional
	public void delete(int b7) {
		followupb7Dao.delete(b7);
		
	}

	@Transactional
	public InitialB7 getInitialB7(int b7) {
		
		return followupb7Dao.getInitialB7(b7);
	}

	@Transactional
	public List getAllInitialB7() {
		return followupb7Dao.getAllInitialB7();
	}

}

