package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity 
@Table(name = "USER_NOTE", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USERNOTE_NOTE"),
		@UniqueConstraint(columnNames = "USERNOTE_USERNOTE") })
@DiscriminatorValue("USER_NOTE")
@PrimaryKeyJoinColumn(name="USER_ID")
public class UserNote implements Serializable{
	
	private User user;
	private int note;
	private String userNote;
	
	/**
	 * Empty class constructor for user table.
	 */
	public UserNote(){
		
	}
	
	public UserNote(String userNote){
		this.userNote = userNote;
	}
	
	public UserNote(String userNote, User user){
		this.userNote = userNote;
		this.user = user;
	}
	
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
	@Column(name = "USERNOTE_NOTE", unique = true, nullable = false)
	public int get_note(){
		return note; 
	}
	
	/**
	 * 
	 * @param note
	 */
	public void set_note(int note){
		this.note = note;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERNOTE_USERNOTE", unique = true, nullable = false)
	public String get_userNote(){
		return userNote;
	}
	
	/**
	 * 
	 * @param clinicId
	 */
	public void set_userLog(String userNote){
		this.userNote = userNote;
	}

}
