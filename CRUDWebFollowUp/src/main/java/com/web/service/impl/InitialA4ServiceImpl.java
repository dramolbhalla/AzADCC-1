package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialA4Dao;
import com.web.model.InitialA4;
import com.web.service.InitialA4Service;
@Service
public class InitialA4ServiceImpl implements InitialA4Service{
	
	@Autowired
	private InitialA4Dao initiala4Dao;

	@Transactional
	public void add(InitialA4 initiala4) {
		initiala4Dao.add(initiala4);
		
	}

	@Transactional
	public void edit(InitialA4 initiala4) {
		initiala4Dao.edit(initiala4);
		
	}

	@Transactional
	public void delete(int a4) {
		initiala4Dao.delete(a4);
		
	}

	@Transactional
	public InitialA4 getInitialA4(int a4) {
		return initiala4Dao.getInitialA4(a4);
	}

	@Transactional
	public List getAllInitialA4() {
		return initiala4Dao.getAllInitialA4();
	}

	

}
