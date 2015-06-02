package com.web.dao;

import java.util.List;

import com.web.model.InitialB5;

public interface InitialB5Dao {
	public void add(InitialB5 initialb5);
	public void edit(InitialB5 initialb5);
	public void delete(int b5);
	public InitialB5 getInitialB5(int b5);
	public List getAllInitialB5();

}
