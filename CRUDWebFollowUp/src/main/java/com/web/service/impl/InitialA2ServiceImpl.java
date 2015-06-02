package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialA2Dao;
import com.web.model.InitialA2;
import com.web.service.InitialA2Service;

@Service
public class InitialA2ServiceImpl implements InitialA2Service {
	@Autowired
	private InitialA2Dao initiala2Dao;

	@Transactional
	public void add(InitialA2 initiala2) {
		initiala2Dao.add(initiala2);
		
	}

	@Transactional
	public void edit(InitialA2 initiala2) {
		initiala2Dao.edit(initiala2);
		
	}

	@Transactional
	public void delete(int a2) {
		initiala2Dao.delete(a2);
		
	}

	@Transactional
	public InitialA2 getInitialA2(int a2) {
		return initiala2Dao.getInitialA2(a2);
	}

	@Transactional
	public List getAllInitialA2() {
		return initiala2Dao.getAllInitialA2();
	}

}
