package com.web.dao;

import java.util.List;

import com.web.model.FollowupD1;

public interface FollowupD1Dao {
	public void add(FollowupD1 followupd1);
	public void edit(FollowupD1 followupd1);
	public void delete(int d1);
	public FollowupD1 getFollowupD1(int d1);
	public List getAllFollowupD1();

}
