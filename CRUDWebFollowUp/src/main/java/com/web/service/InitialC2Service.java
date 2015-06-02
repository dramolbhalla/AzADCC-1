package com.web.service;

import java.util.List;

import com.web.model.InitialC2;

public interface InitialC2Service {
	public void add(InitialC2 initialc2);
	public void edit(InitialC2 initialc2);
	public void delete(int c2);
	public InitialC2 getInitialC2(int c2);
	public List getAllInitialC2();

}
