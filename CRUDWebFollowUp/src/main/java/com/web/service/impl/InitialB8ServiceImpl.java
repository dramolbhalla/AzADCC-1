package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB8Dao;
import com.web.model.InitialB8;
import com.web.service.InitialB8Service;

@Service
public class InitialB8ServiceImpl implements InitialB8Service {
	@Autowired
	private InitialB8Dao initialb8Dao;

	@Transactional
	public void add(InitialB8 initialb8) {
		initialb8Dao.add(initialb8);
		
	}

	@Transactional
	public void edit(InitialB8 initialb8) {
		initialb8Dao.edit(initialb8);
		
	}

	@Transactional
	public void delete(int b8) {
		initialb8Dao.delete(b8);
		
	}

	@Transactional
	public InitialB8 getInitialB8(int b8) {
		
		return initialb8Dao.getInitialB8(b8);
	}

	@Transactional
	public List getAllInitialB8() {
		return initialb8Dao.getAllInitialB8();
	}

}

