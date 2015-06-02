package com.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.HeaderDao;
import com.web.model.Header;
import com.web.service.HeaderService;

@Service
public class HeaderServiceImpl implements HeaderService{
	@Autowired
	private HeaderDao HeaderDao;

	@Transactional
	public void add(Header header) {
		HeaderDao.add(header);

	}

	@Transactional
	public void edit(Header header) {
		HeaderDao.edit(header);

	}

//	@Transactional
//	public void delete(int z1) {
//		HeaderDao.delete(z1);
//
//	}

//	@Transactional
//	public Header getHeader(int z1) {
//		return HeaderDao.getHeader(z1);
//		
//	}

	@Transactional
	public List getAllHeader() {
		return HeaderDao.getAllHeader();
		
	}
}
