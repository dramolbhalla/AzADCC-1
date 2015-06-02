package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialD2Dao;
import com.web.model.InitialD2;
import com.web.service.InitialD2Service;

@Service
public class InitialD2ServiceImpl implements InitialD2Service {
	@Autowired
	private InitialD2Dao initiald2Dao;

	@Transactional
	public void add(InitialD2 initiald2) {
		initiald2Dao.add(initiald2);
		
	}

	@Transactional
	public void edit(InitialD2 initiald2) {
		initiald2Dao.edit(initiald2);
		
	}

	@Transactional
	public void delete(int d2) {
		initiald2Dao.delete(d2);
		
	}

	@Transactional
	public InitialD2 getInitialD2(int d2) {
		
		return initiald2Dao.getInitialD2(d2);
	}

	@Transactional
	public List getAllInitialD2() {
		return initiald2Dao.getAllInitialD2();
	}

}

