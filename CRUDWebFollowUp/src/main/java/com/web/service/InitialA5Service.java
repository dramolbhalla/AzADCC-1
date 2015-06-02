package com.web.service;

import java.util.List;

import com.web.model.InitialA5;

public interface InitialA5Service {
	public void add(InitialA5 initiala5);
	public void edit(InitialA5 initiala5);
	public void delete(int a5);
	public InitialA5 getInitialA5(int a5);
	public List getAllInitialA5();

}