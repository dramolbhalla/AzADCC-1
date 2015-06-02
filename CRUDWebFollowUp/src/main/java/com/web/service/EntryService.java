package com.web.service;

public interface EntryService 
{
	public Object retrieveFormDetails(int ptid, int visitnum, Character packet, String formid, int formver);
	public Object retrieveForm(int detailsid, Character packet, String formid, int formver);
}
