package com.web.dao;

import java.util.List;

import com.web.model.InitialA4;

public interface InitialA4Dao {
	public void add(InitialA4 initiala4);
	public void edit(InitialA4 initiala4);
	public void delete(int a4);
	public InitialA4 getInitialA4(int a4);
	public List getAllInitialA4();

}
