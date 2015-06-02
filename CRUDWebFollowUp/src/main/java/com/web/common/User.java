/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;


import javax.persistence.*;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Entity;
import javax.persistence.Inheritance;

@Entity 
@Table(name = "USER", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USER_ID"),
		@UniqueConstraint(columnNames = "USER_USERID"),
		@UniqueConstraint(columnNames = "USER_ACCESSLEVEL") })
@Inheritance(strategy=InheritanceType.JOINED)
@DiscriminatorValue("USER")
public class User implements Serializable {
	
	private int uid;
	private String userId;
	private int accessLevel;
	private Set<Subject> subjects = new HashSet<Subject>(0);
	private Set<Center> centers = new HashSet<Center>(0);
	private Set<Clinic> clinics = new HashSet<Clinic>(0);
	private Set<UserNote> userNotes = new HashSet<UserNote>(0);
	private Set<UserLog> userLogs = new HashSet<UserLog>(0);
	private UserPassword userPassword;
	
	public User(){
		
	}
	
	public User(String userId, int accessLevel){
		this.userId = userId;
		this.accessLevel = accessLevel;
	}
	
	public User(String userId, int accessLevel, Set<Subject> subjects, Set<Center> centers, Set<Clinic> clinics, Set<UserNote> userNotes, Set<UserLog> userLogs){
		this.userId = userId;
		this.accessLevel = accessLevel;
		this.subjects = subjects;
		this.centers = centers;
		this.clinics = clinics;
		this.userNotes = userNotes;
		this.userLogs = userLogs;
	}
	
	/**
	 * 
	 * @return
	 */
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "USER_ID", unique = true, nullable = false)
	public int get_uid(){
	     return uid;
	}
	
	/**
	 * 
	 * @param uid
	 */
	public void set_uid(int uid){
		this.uid = uid;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USER_USERID", unique = true, nullable = false, length = 10)
	public String get_userId(){
		return userId;
	}
	
	/**
	 * 
	 * @param userId
	 */
	public void set_userId(String userId){
		this.userId = userId;
	}
	
	
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USER_ACCESSLEVEL", unique = true, nullable = false, length = 2)
	public int get_accessLevel (){
		return accessLevel;
	}
	
	/**
	 * 
	 * @param designations
	 */
	public void set_accessLevel (int accessLevel){
		this.accessLevel = accessLevel;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "USER")
	public Set<Subject> get_Subject () {
		return subjects;
	}
	
	/**
	 * 
	 * @param subjectNote
	 */
	public void set_Subject (Set<Subject> subjects){
		this.subjects = subjects;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "USER")
	public Set<Center> get_Center () {
		return centers;
	}
	
	/**
	 * 
	 * @param centers
	 */
	public void set_Center (Set<Center> centers){
		this.centers = centers;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "USER")
	public Set<Clinic> get_Clinic () {
		return clinics;
	}
	
	/**
	 * 
	 * @param clinics
	 */
	public void set_Clinic (Set<Clinic> clinics){
		this.clinics = clinics;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "USER")
	public Set<UserNote> get_UserNote () {
		return userNotes;
	}
	
	/**
	 * 
	 * @param userNotes
	 */
	public void set_UserNote (Set<UserNote> userNotes){
		this.userNotes = userNotes;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "USER")
	public Set<UserLog> get_UserLog () {
		return userLogs;
	}
	
	/**
	 * 
	 * @param userLogs
	 */
	public void set_UserLog (Set<UserLog> userLogs){
		this.userLogs = userLogs;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "USER", cascade = CascadeType.ALL)
	public UserPassword get_UserPassword () {
		return userPassword;
	}
	
	/**
	 * 
	 * @param userLogs
	 */
	public void set_UserPassword (UserPassword userPassword){
		this.userPassword = userPassword;
	}
}
