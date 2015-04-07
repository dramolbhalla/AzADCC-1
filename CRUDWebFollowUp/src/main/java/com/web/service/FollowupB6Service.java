package com.web.service;

import java.util.List;

import com.web.model.FollowupB6;

public interface FollowupB6Service {
	public void add(FollowupB6 followupb6);
	public void edit(FollowupB6 followupb6);
	public void delete(int b6);
	public FollowupB6 getFollowupB6(int b6);
	public List getAllFollowupB6();

}
