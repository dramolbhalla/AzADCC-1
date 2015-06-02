package com.web.service;

import java.util.List;

import com.web.model.FollowupA4;

public interface FollowupA4Service {
	public void add(FollowupA4 initiala4);
	public void edit(FollowupA4 initiala4);
	public void delete(int a4);
	public FollowupA4 getFollowupA4(int a4);
	public List getAllFollowupA4();

}
