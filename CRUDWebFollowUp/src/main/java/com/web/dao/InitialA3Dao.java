package com.web.dao;

import java.util.List;

import com.web.model.InitialA3;

public interface InitialA3Dao {
	public void add(InitialA3 initiala3);
	public void edit(InitialA3 initiala3);
	public void delete(int a3);
	public InitialA3 getInitialA3(int a3);
	public List getAllInitialA3();

}
