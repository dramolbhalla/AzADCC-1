package com.web.dao;

import java.util.List;

import com.web.model.FollowupD2;

public interface FollowupD2Dao {
	public void add(FollowupD2 followupd2);
	public void edit(FollowupD2 followupd2);
	public void delete(int d2);
	public FollowupD2 getFollowupD2(int d2);
	public List getAllFollowupD2();

}
