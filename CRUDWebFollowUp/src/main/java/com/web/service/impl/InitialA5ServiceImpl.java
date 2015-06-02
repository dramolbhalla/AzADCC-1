package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialA5Dao;
import com.web.model.InitialA5;
import com.web.service.InitialA5Service;

@Service
public class InitialA5ServiceImpl implements InitialA5Service {
	@Autowired
	private InitialA5Dao initiala5Dao;

	@Transactional
	public void add(InitialA5 initiala5) {
		initiala5Dao.add(initiala5);

	}

	@Transactional
	public void edit(InitialA5 initiala5) {
		initiala5Dao.edit(initiala5);

	}

	@Transactional
	public void delete(int a5) {
		initiala5Dao.delete(a5);

	}

	@Transactional
	public InitialA5 getInitialA5(int a5) {
		return initiala5Dao.getInitialA5(a5);
		
	}

	@Transactional
	public List getAllInitialA5() {
		return initiala5Dao.getAllInitialA5();
		
	}
}
