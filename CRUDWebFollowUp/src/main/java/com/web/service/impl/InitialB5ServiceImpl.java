package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB5Dao;
import com.web.model.InitialB5;
import com.web.service.InitialA1Service;
import com.web.service.InitialB5Service;

@Service
public class InitialB5ServiceImpl implements InitialB5Service{
	@Autowired
	private InitialB5Dao initialb5Dao;

	@Transactional
	public void add(InitialB5 initialb5) {
		initialb5Dao.add(initialb5);
		
	}

	@Transactional
	public void edit(InitialB5 initialb5) {
		initialb5Dao.edit(initialb5);
		
	}

	@Transactional
	public void delete(int b5) {
		initialb5Dao.delete(b5);
		
	}

	@Transactional
	public InitialB5 getInitialB5(int b5) {
		
		return initialb5Dao.getInitialB5(b5);
	}

	@Transactional
	public List getAllInitialB5() {
		return initialb5Dao.getAllInitialB5();
	}


}
