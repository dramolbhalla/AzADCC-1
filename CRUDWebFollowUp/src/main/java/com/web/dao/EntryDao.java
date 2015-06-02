package com.web.dao;

public interface EntryDao {
	public Object retrieveFormDetails(int ptid, int visitnum, Character packet, String formid, int formver);
	public Object retrieveForm(int detailsid, Character packet, String formid, int formver);
}
