package com.web.service;

import java.util.List;

import com.web.model.Header;

public interface HeaderService {
	public void add(Header header);
	public void edit(Header header);
	//public void delete(int z1);
	//public FollowupZ1 getFollowupZ1(int z1);
	public List getAllHeader();
}
