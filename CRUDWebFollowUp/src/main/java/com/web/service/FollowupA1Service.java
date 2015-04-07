package com.web.service;

import java.util.List;

import com.web.model.FollowupA1;

public interface FollowupA1Service {
	public void add(FollowupA1 followupa1);
	public void edit(FollowupA1 followupa1);
	public void delete(int a1);
	public FollowupA1 getFollowupA1(int a1);
	public List getAllFollowupA1();

}
