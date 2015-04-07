package com.web.dao;

import java.util.List;

import com.web.model.FollowupA3;

public interface FollowupA3Dao {
	public void add(FollowupA3 followupa3);
	public void edit(FollowupA3 followupa3);
	public void delete(int a3);
	public FollowupA3 getFollowupA3(int a3);
	public List getAllFollowupA3();

}
