package com.web.service;

import java.util.List;

import com.web.model.FollowupB1;

public interface FollowupB1Service {
	public void add(FollowupB1 followupb1);
	public void edit(FollowupB1 followupb1);
	public void delete(int b1);
	public FollowupB1 getFollowupB1(int b1);
	public List getAllFollowupB1();

}
