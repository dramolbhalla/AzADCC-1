package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB9Dao;
import com.web.model.InitialB9;
import com.web.service.InitialB9Service;

@Service
public class InitialB9ServiceImpl implements InitialB9Service {
	@Autowired
	private InitialB9Dao initialb9Dao;

	@Transactional
	public void add(InitialB9 initialb9) {
		initialb9Dao.add(initialb9);
		
	}

	@Transactional
	public void edit(InitialB9 initialb9) {
		initialb9Dao.edit(initialb9);
		
	}

	@Transactional
	public void delete(int b9) {
		initialb9Dao.delete(b9);
		
	}

	@Transactional
	public InitialB9 getInitialB9(int b9) {
		
		return initialb9Dao.getInitialB9(b9);
	}

	@Transactional
	public List getAllInitialB9() {
		return initialb9Dao.getAllInitialB9();
	}

}
