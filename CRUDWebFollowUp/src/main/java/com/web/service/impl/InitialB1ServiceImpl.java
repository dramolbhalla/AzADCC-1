package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB1Dao;
import com.web.model.InitialB1;
import com.web.service.InitialB1Service;

@Service
public class InitialB1ServiceImpl implements InitialB1Service {
	@Autowired
	private InitialB1Dao initialb1Dao;

	@Transactional
	public void add(InitialB1 initialb1) {
		initialb1Dao.add(initialb1);
		
	}

	@Transactional
	public void edit(InitialB1 initialb1) {
		initialb1Dao.edit(initialb1);
		
	}

	@Transactional
	public void delete(int b1) {
		initialb1Dao.delete(b1);
		
	}

	@Transactional
	public InitialB1 getInitialB1(int b1) {
		
		return initialb1Dao.getInitialB1(b1);
	}

	@Transactional
	public List getAllInitialB1() {
		return initialb1Dao.getAllInitialB1();
	}

}
