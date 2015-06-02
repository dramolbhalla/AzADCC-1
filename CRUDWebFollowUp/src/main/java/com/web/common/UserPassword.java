/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.*;
import javax.persistence.OneToOne;

@Entity 
@Table(name = "USER_PASSWORD", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USERPASSWORD_PASSWORD"),
		@UniqueConstraint(columnNames = "USERPASSWORD_PASSWORDSTRING") })
@DiscriminatorValue("USER_PASSWORD")
@PrimaryKeyJoinColumn(name="USER_ID")
public class UserPassword implements Serializable{
	
	private User user;
	private int password;
	private String passwordString;
		
	/**
	 * Default blank constructor for UserPassword.
	 */
	public UserPassword(){
		
	}
	
	/**
	 * Default constructor for UserPassword.
	 * @param passwordString
	 */
	public UserPassword(String passwordString){
		this.passwordString = passwordString;
	}
	
	public UserPassword(String passwordString, User user){
		this.passwordString = passwordString;
		this.user = user;
	}
	
	
	
	//Getter and Setters
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="USER_ID")
	public User get_User(){
		return user;
	}
	
	/**
	 * 
	 * @param user
	 */
	public void set_User(User user){
		this.user = user;
	}
	
	/**
	 * 
	 * @return
	 */
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "USERPASSWORD_PASSWORD", unique = true, nullable = false)
	public int get_password(){
		return password;
	}
	
	/**
	 * 
	 * @param password
	 */
	public void set_password(int password){
		this.password = password;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERNPASSWORD_PASSWORDSTRING", unique = true, nullable = false)
	public String get_passwordString(){
		return passwordString;
	}
	
	/**
	 * 
	 * @param password
	 */
	public void set_passwordString(String passwordString){
		this.passwordString = passwordString;
	}
}
