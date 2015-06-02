package com.web.dao;

import java.util.List;

import com.web.model.Header;

public interface HeaderDao 
{
	public void add(Header header);
	public void edit(Header header);
	//public void delete(int z1);
	//public Header getFollowupZ1(int z1);
	public List getAllHeader();
}
