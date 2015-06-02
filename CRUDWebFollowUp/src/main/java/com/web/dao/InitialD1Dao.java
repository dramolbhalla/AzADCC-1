package com.web.dao;

import java.util.List;

import com.web.model.InitialD1;

public interface InitialD1Dao {
	public void add(InitialD1 initiald1);
	public void edit(InitialD1 initiald1);
	public void delete(int d1);
	public InitialD1 getInitialD1(int d1);
	public List getAllInitialD1();

}
