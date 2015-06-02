package com.web.service;

import java.util.List;

import com.web.model.InitialB6;

public interface InitialB6Service {
	public void add(InitialB6 initialb6);
	public void edit(InitialB6 initialb6);
	public void delete(int b6);
	public InitialB6 getInitialB6(int b6);
	public List getAllInitialB6();

}
