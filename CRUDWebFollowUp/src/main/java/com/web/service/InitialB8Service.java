package com.web.service;

import java.util.List;

import com.web.model.InitialB8;

public interface InitialB8Service {
	public void add(InitialB8 initialb8);
	public void edit(InitialB8 initialb8);
	public void delete(int b8);
	public InitialB8 getInitialB8(int b8);
	public List getAllInitialB8();

}
