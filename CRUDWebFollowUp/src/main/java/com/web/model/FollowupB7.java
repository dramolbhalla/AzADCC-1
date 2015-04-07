package com.web.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
//import persistance.entities.Subjects.Subject;
//import persistance.entities.Users.User;

@Entity
public class FollowupB7 implements Serializable{
	/*User user;
	Subject subject;
	Header header;*/
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	int b7;
	@Column
	int bills;
	@Column
	int taxes;
	@Column
	int shopping;
	@Column
	int games;
	@Column
	int stove;
	@Column
	int mealprep;
	@Column
	int events;
	@Column
	int payattn;
	@Column
	int remdates;
	@Column
	int travel;
	
	public FollowupB7() {
		super();
	}

	public FollowupB7(int b7, int bills, int taxes, int shopping, int games, int stove,
			int mealprep, int events, int payattn, int remdates, int travel) {
		super();
		this.b7 = b7;
		this.bills = bills;
		this.taxes = taxes;
		this.shopping = shopping;
		this.games = games;
		this.stove = stove;
		this.mealprep = mealprep;
		this.events = events;
		this.payattn = payattn;
		this.remdates = remdates;
		this.travel = travel;
	}

	/*public B7(User user, Subject subject, Header header, int b7, int bills,
			int taxes, int shopping, int games, int stove, int mealprep,
			int events, int payattn, int remdates, int travel) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.b7 = b7;
		this.bills = bills;
		this.taxes = taxes;
		this.shopping = shopping;
		this.games = games;
		this.stove = stove;
		this.mealprep = mealprep;
		this.events = events;
		this.payattn = payattn;
		this.remdates = remdates;
		this.travel = travel;
	}

	@ManyToOne
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@ManyToOne
	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	@ManyToOne
	public Header getHeader() {
		return header;
	}

	public void setHeader(Header header) {
		this.header = header;
	}*/

	public int getB7() {
		return b7;
	}

	public void setB7(int b7) {
		this.b7 = b7;
	}

	public int getBills() {
		return bills;
	}

	public void setBills(int bills) {
		this.bills = bills;
	}

	public int getTaxes() {
		return taxes;
	}

	public void setTaxes(int taxes) {
		this.taxes = taxes;
	}

	public int getShopping() {
		return shopping;
	}

	public void setShopping(int shopping) {
		this.shopping = shopping;
	}

	public int getGames() {
		return games;
	}

	public void setGames(int games) {
		this.games = games;
	}

	public int getStove() {
		return stove;
	}

	public void setStove(int stove) {
		this.stove = stove;
	}

	public int getMealprep() {
		return mealprep;
	}

	public void setMealprep(int mealprep) {
		this.mealprep = mealprep;
	}

	public int getEvents() {
		return events;
	}

	public void setEvents(int events) {
		this.events = events;
	}

	public int getPayattn() {
		return payattn;
	}

	public void setPayattn(int payattn) {
		this.payattn = payattn;
	}

	public int getRemdates() {
		return remdates;
	}

	public void setRemdates(int remdates) {
		this.remdates = remdates;
	}

	public int getTravel() {
		return travel;
	}

	public void setTravel(int travel) {
		this.travel = travel;
	}
	
}

