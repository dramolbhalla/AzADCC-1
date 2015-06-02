package com.web.dao;

import java.util.List;

import com.web.model.InitialZ1;

public interface InitialZ1Dao {
	
	public void add(InitialZ1 initialz1);
	public void edit(InitialZ1 initialz1);
	public void delete(int z1);
	public InitialZ1 getInitialZ1(int z1);
	public List getAllInitialZ1();

}
