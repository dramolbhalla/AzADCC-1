package com.web.service;

import java.util.List;

import com.web.model.FollowupC1;

public interface FollowupC1Service {
	public void add(FollowupC1 followupc1);
	public void edit(FollowupC1 followupc1);
	public void delete(int c1);
	public FollowupC1 getFollowupC1(int c1);
	public List getAllFollowupC1();

}
