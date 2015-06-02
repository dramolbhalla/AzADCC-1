package com.web.dao;

import java.util.List;

import com.web.model.InitialB7;

public interface InitialB7Dao {
	public void add(InitialB7 initialb7);
	public void edit(InitialB7 initialb7);
	public void delete(int b7);
	public InitialB7 getInitialB7(int b7);
	public List getAllInitialB7();

}
