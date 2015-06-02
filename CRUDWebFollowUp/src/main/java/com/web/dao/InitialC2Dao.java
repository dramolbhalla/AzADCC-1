package com.web.dao;

import java.util.List;

import com.web.model.InitialC2;

public interface InitialC2Dao {
	public void add(InitialC2 initialc2);
	public void edit(InitialC2 initialc2);
	public void delete(int c2);
	public InitialC2 getInitialC2(int c2);
	public List getAllInitialC2();

}
