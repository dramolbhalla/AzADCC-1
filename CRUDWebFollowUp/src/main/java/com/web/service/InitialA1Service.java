package com.web.service;

import java.util.List;

import com.web.model.InitialA1;

public interface InitialA1Service {
	public void add(InitialA1 initiala1);
	public void edit(InitialA1 initiala1);
	public void delete(int a1);
	public InitialA1 getInitialA1(int a1);
	public List getAllInitialA1();

}
