package com.web.dao;

import java.util.List;

import com.web.model.FollowupB4;

public interface FollowupB4Dao {
	public void add(FollowupB4 followupb4);
	public void edit(FollowupB4 followupb4);
	public void delete(int b4);
	public FollowupB4 getFollowupB4(int b4);
	public List getAllFollowupB4();

}
