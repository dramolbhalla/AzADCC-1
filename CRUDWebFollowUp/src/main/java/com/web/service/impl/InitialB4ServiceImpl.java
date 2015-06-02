package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialB4Dao;
import com.web.model.InitialB4;
import com.web.service.InitialB4Service;

@Service
public class InitialB4ServiceImpl implements InitialB4Service {
	@Autowired
	private InitialB4Dao initialb4Dao;

	@Transactional
	public void add(InitialB4 initialb4) {
		initialb4Dao.add(initialb4);
		
	}

	@Transactional
	public void edit(InitialB4 initialb4) {
		initialb4Dao.edit(initialb4);
		
	}

	@Transactional
	public void delete(int b4) {
		initialb4Dao.delete(b4);
		
	}

	@Transactional
	public InitialB4 getInitialB4(int b4) {
		
		return initialb4Dao.getInitialB4(b4);
	}

	@Transactional
	public List getAllInitialB4() {
		return initialb4Dao.getAllInitialB4();
	}


}
