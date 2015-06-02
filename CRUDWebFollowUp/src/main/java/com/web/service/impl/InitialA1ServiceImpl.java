package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialA1Dao;
import com.web.model.InitialA1;
import com.web.service.InitialA1Service;
@Service
public class InitialA1ServiceImpl implements InitialA1Service {
	@Autowired
	private InitialA1Dao initiala1Dao;

	@Transactional
	public void add(InitialA1 initiala1) {
		initiala1Dao.add(initiala1);

	}

	@Transactional
	public void edit(InitialA1 initiala1) {
		initiala1Dao.edit(initiala1);

	}

	@Transactional
	public void delete(int a1) {
		initiala1Dao.delete(a1);

	}

	@Transactional
	public InitialA1 getInitialA1(int a1) {
		return initiala1Dao.getInitialA1(a1);
		
	}

	@Transactional
	public List getAllInitialA1() {
		return initiala1Dao.getAllInitialA1();
		
	}

}
