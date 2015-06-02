/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import javax.persistence.Entity;
import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.*;
import javax.persistence.OneToOne;

@Entity
@Table(name = "USER_WORK_INFO", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USERWORKINFO_WORKINFO"),
		@UniqueConstraint(columnNames = "USERWORKINFO_ADDRESS1"),
		@UniqueConstraint(columnNames = "USERWORKINFO_ADDRESS2"),
		@UniqueConstraint(columnNames = "USERWORKINFO_CITY"),
		@UniqueConstraint(columnNames = "USERWORKINFO_STATE"),
		@UniqueConstraint(columnNames = "USERWORKINFO_ZIP"),
		@UniqueConstraint(columnNames = "USERWORKINFO_WORKPHONE"),
		@UniqueConstraint(columnNames = "USERWORKINFO_EXTENSION"),
		@UniqueConstraint(columnNames = "USERWORKINFO_FAX"),
		@UniqueConstraint(columnNames = "USERWORKINFO_EMAIL") })
@DiscriminatorValue("USER_WORKL_INFO")
@PrimaryKeyJoinColumn(name="USER_ID")
public class UserWorkInfo implements Serializable{
	
	private User user;
	private int workInfo;
	String address1; 
	String address2;
	String city; 
	String state; 
	String zip; 
	String workPhone; 
	String extension; 
	String fax; 
	String email;  
	
	/**
	 * Default blank constructor for UserWorkInfo.
	 */
	public UserWorkInfo(){
		
	}
	
	/**
	 * Default constructor for UserWorkInfo.
	 * @param address1
	 * @param address2
	 * @param city
	 * @param email
	 * @param state
	 * @param zip
	 * @param workPhone
	 * @param extension
	 * @param fax
	 */
	public UserWorkInfo(String address1, String address2, String city, String email, String state, String zip, String workPhone, String extension, String fax){
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.email = email;
		this.state = state;
		this.zip = zip;
		this.workPhone = workPhone;
		this.extension = extension;
		this.fax = fax;	
	}
	
	/**
	 * 
	 * @param address1
	 * @param address2
	 * @param city
	 * @param email
	 * @param state
	 * @param zip
	 * @param workPhone
	 * @param extension
	 * @param fax
	 * @param user
	 */
	public UserWorkInfo(String address1, String address2, String city, String email, String state, String zip, String workPhone, String extension, String fax, User user){
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.email = email;
		this.state = state;
		this.zip = zip;
		this.workPhone = workPhone;
		this.extension = extension;
		this.fax = fax;
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
	@Column(name = "USERWORKINFO_WORKINFO", unique = true, nullable = false)
	public int get_workInfo(){
		return workInfo;
	}
	
	/**
	 * 
	 * @param workInfo
	 */
	public void set_workInfo(int workInfo){
		this.workInfo = workInfo;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_ADDRESS1", unique = true, nullable = false)
	public String get_address1 () {
		return address1;
	}
	
	/**
	 * 
	 * @param address1
	 */
	public void set_address1 (String address1){
		this.address1 = address1;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_ADDRESS2", unique = true, nullable = true)
	public String get_address2 () {
		return address2;
	}
	
	/**
	 * 
	 * @param address2
	 */
	public void set_address2 (String address2){
		this.address2 = address2;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_CITY", unique = true, nullable = false)
	public String get_city () {
		return city;
	}
	
	/**
	 * 
	 * @param city
	 */
	public void set_city (String city){
		this.city = city;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_STATE", unique = true, nullable = false)
	public String get_state () {
		return state;
	}
	
	/**
	 * 
	 * @param state
	 */
	public void set_state (String state){
		this.state = state;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_ZIP", unique = true, nullable = false, length = 9)
	public String get_zip () {
		return zip;
	}
	
	/**
	 * 
	 * @param zip
	 */
	public void set_zip (String zip){
		this.zip = zip;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_WORKPHONE", unique = true, nullable = false, length = 10)
	public String get_workPhone () {
		return workPhone;
	}
	
	/**
	 * 
	 * @param workPhone
	 */
	public void set_workPhone (String workPhone){
		this.workPhone = workPhone;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_EXTENSION", unique = true, nullable = true)
	public String get_extension () {
		return extension;
	}
	
	/**
	 * 
	 * @param extension
	 */
	public void set_extension (String extension){
		this.extension = extension;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_FAX", unique = true, nullable = true)
	public String get_fax () {
		return fax;
	}
	
	/**
	 * 
	 * @param fax
	 */
	public void set_fax (String fax){
		this.fax = fax;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERWORKINFO_EMAIL", unique = true, nullable = true)
	public String get_email () {
		return email;
	}
	
	/**
	 * 
	 * @param email
	 */
	public void set_email (String email){
		this.email = email;
	}
}
