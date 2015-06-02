package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialD1Dao;
import com.web.model.InitialD1;
import com.web.service.InitialD1Service;

@Service
public class InitialD1ServiceImpl implements InitialD1Service {
	@Autowired
	private InitialD1Dao initiald1Dao;

	@Transactional
	public void add(InitialD1 initiald1) {
		initiald1Dao.add(initiald1);
		
	}

	@Transactional
	public void edit(InitialD1 initiald1) {
		initiald1Dao.edit(initiald1);
		
	}

	@Transactional
	public void delete(int d1) {
		initiald1Dao.delete(d1);
		
	}

	@Transactional
	public InitialD1 getInitialD1(int d1) {
		
		return initiald1Dao.getInitialD1(d1);
	}

	@Transactional
	public List getAllInitialD1() {
		return initiald1Dao.getAllInitialD1();
	}

}
