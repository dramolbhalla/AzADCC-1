package com.web.service;

import java.util.List;

import com.web.model.InitialB9;

public interface InitialB9Service {
	public void add(InitialB9 initialb9);
	public void edit(InitialB9 initialb9);
	public void delete(int b9);
	public InitialB9 getInitialB9(int b9);
	public List getAllInitialB9();

}
