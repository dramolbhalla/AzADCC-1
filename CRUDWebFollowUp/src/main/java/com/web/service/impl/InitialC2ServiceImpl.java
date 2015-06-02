package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialC2Dao;
import com.web.model.InitialC2;
import com.web.service.InitialC2Service;

@Service
public class InitialC2ServiceImpl implements InitialC2Service {
	@Autowired
	private InitialC2Dao initialc2Dao;

	@Transactional
	public void add(InitialC2 initialc2) {
		initialc2Dao.add(initialc2);
		
	}

	@Transactional
	public void edit(InitialC2 initialc2) {
		initialc2Dao.edit(initialc2);
		
	}

	@Transactional
	public void delete(int c2) {
		initialc2Dao.delete(c2);
		
	}

	@Transactional
	public InitialC2 getInitialC2(int c2) {
		
		return initialc2Dao.getInitialC2(c2);
	}

	@Transactional
	public List getAllInitialC2() {
		return initialc2Dao.getAllInitialC2();
	}

}

