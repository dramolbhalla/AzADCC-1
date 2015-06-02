package com.web.service;

import java.util.List;

import com.web.model.FollowupZ1;

public interface FollowupZ1Service {
	public void add(FollowupZ1 followupz1);
	public void edit(FollowupZ1 followupz1);
	public void delete(int z1);
	public FollowupZ1 getFollowupZ1(int z1);
	public List getAllFollowupZ1();
}
