package com.web.dao;

import java.util.List;

import com.web.model.InitialB4;

public interface InitialB4Dao {
	public void add(InitialB4 initialb4);
	public void edit(InitialB4 initialb4);
	public void delete(int b4);
	public InitialB4 getInitialB4(int b4);
	public List getAllInitialB4();

}
