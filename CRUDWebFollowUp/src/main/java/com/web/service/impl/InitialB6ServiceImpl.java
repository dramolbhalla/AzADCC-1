package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB6Dao;
import com.web.model.InitialB6;
import com.web.service.InitialB6Service;

@Service
public class InitialB6ServiceImpl implements InitialB6Service {
	@Autowired
	private InitialB6Dao initialb6Dao;

	@Transactional
	public void add(InitialB6 initialb6) {
		
		initialb6Dao.add(initialb6);
		
	}

	@Transactional
	public void edit(InitialB6 initialb6) {
		initialb6Dao.edit(initialb6);
		
	}

	@Transactional
	public void delete(int b6) {
		initialb6Dao.delete(b6);
		
	}

	@Transactional
	public InitialB6 getInitialB6(int b6) {
		
		return initialb6Dao.getInitialB6(b6);
	}

	@Transactional
	public List getAllInitialB6() {
		return initialb6Dao.getAllInitialB6();
	}

}
