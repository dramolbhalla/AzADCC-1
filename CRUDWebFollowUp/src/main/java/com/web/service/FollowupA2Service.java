package com.web.service;

import java.util.List;

import com.web.model.FollowupA2;

public interface FollowupA2Service {
	public void add(FollowupA2 followupa2);
	public void edit(FollowupA2 followupa2);
	public void delete(int a2);
	public FollowupA2 getFollowupA2(int a2);
	public List getAllFollowupA2();

}
