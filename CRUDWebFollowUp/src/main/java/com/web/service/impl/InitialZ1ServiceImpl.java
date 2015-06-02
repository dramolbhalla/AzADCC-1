package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialZ1Dao;
import com.web.model.InitialZ1;
import com.web.model.InitialZ1;
import com.web.service.InitialZ1Service;
@Service
public class InitialZ1ServiceImpl implements InitialZ1Service {

	@Autowired
	private InitialZ1Dao InitialZ1Dao;

	@Transactional
	public void add(InitialZ1 Initialz1) {
		InitialZ1Dao.add(Initialz1);

	}

	@Transactional
	public void edit(InitialZ1 Initialz1) {
		InitialZ1Dao.edit(Initialz1);

	}

	@Transactional
	public void delete(int z1) {
		InitialZ1Dao.delete(z1);

	}

	@Transactional
	public InitialZ1 getInitialZ1(int z1) {
		return InitialZ1Dao.getInitialZ1(z1);
		
	}

	@Transactional
	public List getAllInitialZ1() {
		return InitialZ1Dao.getAllInitialZ1();
		
	}

}
