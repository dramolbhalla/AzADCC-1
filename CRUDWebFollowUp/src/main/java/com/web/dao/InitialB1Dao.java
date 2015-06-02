package com.web.dao;

import java.util.List;

import com.web.model.InitialB1;

public interface InitialB1Dao {
	public void add(InitialB1 initialb1);
	public void edit(InitialB1 initialb1);
	public void delete(int b1);
	public InitialB1 getInitialB1(int b1);
	public List getAllInitialB1();

}
