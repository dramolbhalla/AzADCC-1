package com.web.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class InitialZ1 implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber 
	 private int z1;
	
	@Column 
	private int a2sub;
	@Column 
	private int a2not ;
	@Column 
	private String a2comm; 
	@Column 
	private int a3sub ;
	@Column 
	private int a3not ;
	@Column 
	private String a3comm; 
	@Column 
	private int a4sub ;
	@Column 
	private int a4not ;
	@Column 
	private String a4comm; 
	@Column 
	private int b1sub ;
	@Column 
	private int b1not ;
	@Column 
	private String b1comm; 
	@Column 
	private int b5sub ;
	@Column 
	private int b5not ;
	@Column 
	private String b5comm; 
	@Column 
	private int b6sub ;
	@Column 
	private int b6not ;
	@Column 
	private String b6comm;
	@Column 
	private int b7sub ;
	@Column 
	private int b7not ;
	@Column 
	private String b7comm;
	
	public InitialZ1() {
		super();
	}

	public InitialZ1(int z1, int a2sub, int a2not, String a2comm, int a3sub, int a3not, String a3comm, int a4sub, int a4not, String a4comm, int b1sub, int b1not, String b1comm, int b5sub, int b5not, String b5comm, int b6sub, int b6not, String b6comm, int b7sub, int b7not, String b7comm) 
	{
		super();
		this.z1 	= z1;
		this.a2sub 	= a2sub; 
		this.a2not 	= a2not; 
		this.a2comm = a2comm; 
		this.a3sub 	= a3sub; 
		this.a3not 	= a3not; 
		this.a3comm = a3comm; 
		this.a4sub 	= a4sub; 
		this.a4not 	= a4not; 
		this.a4comm	= a4comm; 
		this.b1sub 	= b1sub; 
		this.b1not 	= b1not; 
		this.b1comm = b1comm; 
		this.b5sub	= b5sub; 
		this.b5not 	= b5not; 
		this.b5comm = b5comm; 
		this.b6sub 	= b6sub; 
		this.b6not 	= b6not; 
		this.b6comm = b6comm; 
		this.b7sub 	= b7sub; 
		this.b7not 	= b7not; 
		this.b7comm = b7comm;
	}

	public int getZ1() {
		return z1;
	}

	public void setZ1(int z1) {
		this.z1 = z1;
	}

	public int getA2sub() {
		return a2sub;
	}

	public void setA2sub(int a2sub) {
		this.a2sub = a2sub;
	}

	public int getA2not() {
		return a2not;
	}

	public void setA2not(int a2not) {
		this.a2not = a2not;
	}

	public String getA2comm() {
		return a2comm;
	}

	public void setA2comm(String a2comm) {
		this.a2comm = a2comm;
	}

	public int getA3sub() {
		return a3sub;
	}

	public void setA3sub(int a3sub) {
		this.a3sub = a3sub;
	}

	public int getA3not() {
		return a3not;
	}

	public void setA3not(int a3not) {
		this.a3not = a3not;
	}

	public String getA3comm() {
		return a3comm;
	}

	public void setA3comm(String a3comm) {
		this.a3comm = a3comm;
	}

	public int getA4sub() {
		return a4sub;
	}

	public void setA4sub(int a4sub) {
		this.a4sub = a4sub;
	}

	public int getA4not() {
		return a4not;
	}

	public void setA4not(int a4not) {
		this.a4not = a4not;
	}

	public String getA4comm() {
		return a4comm;
	}

	public void setA4comm(String a4comm) {
		this.a4comm = a4comm;
	}

	public int getB1sub() {
		return b1sub;
	}

	public void setB1sub(int b1sub) {
		this.b1sub = b1sub;
	}

	public int getB1not() {
		return b1not;
	}

	public void setB1not(int b1not) {
		this.b1not = b1not;
	}

	public String getB1comm() {
		return b1comm;
	}

	public void setB1comm(String b1comm) {
		this.b1comm = b1comm;
	}

	public int getB5sub() {
		return b5sub;
	}

	public void setB5sub(int b5sub) {
		this.b5sub = b5sub;
	}

	public int getB5not() {
		return b5not;
	}

	public void setB5not(int b5not) {
		this.b5not = b5not;
	}

	public String getB5comm() {
		return b5comm;
	}

	public void setB5comm(String b5comm) {
		this.b5comm = b5comm;
	}

	public int getB6sub() {
		return b6sub;
	}

	public void setB6sub(int b6sub) {
		this.b6sub = b6sub;
	}

	public int getB6not() {
		return b6not;
	}

	public void setB6not(int b6not) {
		this.b6not = b6not;
	}

	public String getB6comm() {
		return b6comm;
	}

	public void setB6comm(String b6comm) {
		this.b6comm = b6comm;
	}

	public int getB7sub() {
		return b7sub;
	}

	public void setB7sub(int b7sub) {
		this.b7sub = b7sub;
	}

	public int getB7not() {
		return b7not;
	}

	public void setB7not(int b7not) {
		this.b7not = b7not;
	}

	public String getB7comm() {
		return b7comm;
	}

	public void setB7comm(String b7comm) {
		this.b7comm = b7comm;
	}
	
	
}
