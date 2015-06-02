package com.web.service;

import java.util.List;

import com.web.model.InitialA2;

public interface InitialA2Service {
	public void add(InitialA2 initiala2);
	public void edit(InitialA2 initiala2);
	public void delete(int a2);
	public InitialA2 getInitialA2(int a2);
	public List getAllInitialA2();

}
