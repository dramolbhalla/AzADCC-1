package com.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.dao.EntryDao;
import com.web.dao.FollowupA1Dao;
import com.web.service.EntryService;

@Service
public class EntryServiceImpl implements EntryService
{
	@Autowired
	private EntryDao entryDao;
	
	@Transactional
	public Object retrieveFormDetails(int ptid, int visitnum, Character packet, String formid, int formver) 
	{
		return entryDao.retrieveFormDetails(ptid, visitnum, packet, formid, formver);
	}
	@Transactional
	public Object retrieveForm(int detailsid, Character packet, String formid, int formver) 
	{
		return entryDao.retrieveForm(detailsid, packet, formid, formver);
	}

}
