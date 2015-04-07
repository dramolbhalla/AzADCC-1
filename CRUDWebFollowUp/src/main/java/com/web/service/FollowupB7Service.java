package com.web.service;

import java.util.List;

import com.web.model.FollowupB7;

public interface FollowupB7Service {
	public void add(FollowupB7 followupb7);
	public void edit(FollowupB7 followupb7);
	public void delete(int b7);
	public FollowupB7 getFollowupB7(int b7);
	public List getAllFollowupB7();

}
