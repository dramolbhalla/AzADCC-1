package com.web.service;

import java.util.List;

import com.web.model.InitialD2;

public interface InitialD2Service {
	public void add(InitialD2 initiald2);
	public void edit(InitialD2 initiald2);
	public void delete(int d2);
	public InitialD2 getInitialD2(int d2);
	public List getAllInitialD2();

}
