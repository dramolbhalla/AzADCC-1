package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.*;
import javax.persistence.OneToOne;

@Entity 
@Table(name = "USER_LOG", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USERLOG_LOG"),
		@UniqueConstraint(columnNames = "USERLOG_USERLOG") })
@DiscriminatorValue("USER_LOG")
@PrimaryKeyJoinColumn(name="USER_ID")
public class UserLog implements Serializable{
	
	private User user;
	private int log;
	private String userLog;
	
	/**
	 * Default blank constructor for UserLog table.
	 */
	public UserLog(){
		
	}
	
	/**
	 * Default constructor for UserLog table. 
	 * @param userLog
	 */
	public UserLog(String userLog){
		this.userLog = userLog;
	}
	
	public UserLog(String userLog, User user){
		this.userLog = userLog;
		this.user = user;
	}

	//Getters and Setters
	
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
	@Column(name = "USERLOG_LOG", unique = true, nullable = false)
	public int get_log(){
	     return log;
	}
	
	/**
	 * 
	 * @param uid
	 */
	public void set_log(int log){
		this.log = log;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERLOG_USERLOG", unique = true, nullable = false)
	public String get_userLog(){
		return userLog;
	}
	
	/**
	 * 
	 * @param clinicId
	 */
	public void set_userLog(String userLog){
		this.userLog = userLog;
	}
}
