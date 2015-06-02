package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.InitialA3Dao;
import com.web.model.InitialA3;
import com.web.service.InitialA3Service;
@Service
public class InitialA3ServiceImpl implements InitialA3Service{
	
	@Autowired
	private InitialA3Dao initiala3Dao;

	@Transactional
	public void add(InitialA3 initiala3) {
		initiala3Dao.add(initiala3);
		
	}

	@Transactional
	public void edit(InitialA3 initiala3) {
		initiala3Dao.edit(initiala3);
		
	}

	@Transactional
	public void delete(int a3) {
		initiala3Dao.delete(a3);
		
	}

	@Transactional
	public InitialA3 getInitialA3(int a3) {
		return initiala3Dao.getInitialA3(a3);
	}

	@Transactional
	public List getAllInitialA3() {
		return initiala3Dao.getAllInitialA3();
	}

	

}
