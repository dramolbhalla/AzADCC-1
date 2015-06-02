/**
 * @author Amol Bhalla
 *
 */
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
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity 
@Table(name = "SUBJECT_EMERGENCY_CONTACT", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_EMERGENCYCONTACT"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_TITLE"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_FIRSTNAME"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_MIDDLENAME"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_LASTNAME"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_ADDRESS1"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_ADDRESS2"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_CITY"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_STATE"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_ZIP"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_HOMEPHONE"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_MOBILEPHONE"),
		@UniqueConstraint(columnNames = "SUBJECTEMERGENCYCONTACT_EMAIL") })
@DiscriminatorValue("SUBJECT_EMERGENCY_CONTACT")
@PrimaryKeyJoinColumn(name="SUBJECT_ID")
public class SubjectEmergencyContact implements Serializable{
		
	private Subject subjectId;	
	private int emergencyContact;	
	private String title;
	private String firstName;
	private String middleName;
	private String lastName;
	private String address1; 
	private String address2; 
	private String city; 
	private String state; 
	private String zip;  
	private String homePhone; 
	private String mobilePhone;
	private String email; 
	
	/**
	 * Empty class constructor for subject table.
	 */
	public SubjectEmergencyContact(){
		
	}
	
	/**
	 * 
	 * @param address1
	 * @param address2
	 * @param city
	 * @param email
	 * @param firstName
	 * @param homePhone
	 * @param lastName
	 * @param middleName
	 * @param mobilePhone
	 * @param state
	 * @param title
	 * @param zip
	 */
	public SubjectEmergencyContact(String address1, String address2, String city, String email, String firstName, String homePhone, String lastName, String middleName, String mobilePhone, String state, String title, String zip){
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.email = email;
		this.firstName = firstName;
		this.homePhone = homePhone;
		this.lastName = lastName;
		this.middleName = middleName;
		this.mobilePhone = mobilePhone;
		this.state = state;
		this.title = title;
		this.zip = zip;
	}
	
	/**
	 * 
	 * @param address1
	 * @param address2
	 * @param city
	 * @param email
	 * @param firstName
	 * @param homePhone
	 * @param lastName
	 * @param middleName
	 * @param mobilePhone
	 * @param state
	 * @param title
	 * @param zip
	 * @param subjectId
	 */
	public SubjectEmergencyContact(String address1, String address2, String city, String email, String firstName, String homePhone, String lastName, String middleName, String mobilePhone, String state, String title, String zip, Subject subjectId){
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.email = email;
		this.firstName = firstName;
		this.homePhone = homePhone;
		this.lastName = lastName;
		this.middleName = middleName;
		this.mobilePhone = mobilePhone;
		this.state = state;
		this.title = title;
		this.zip = zip;
		this.subjectId = subjectId;
	}
	
		
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="SUBJECT_ID")
	public Subject get_subjectId(){
		return subjectId;
	}
	
	/**
	 * 
	 * @param subjectId
	 */
	public void set_subjectId(Subject subjectId){
		this.subjectId = subjectId;
	}
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "SUBJECTEMERGENCYCONTACT_EMERGENCYCONTACT", unique = true, nullable = false)
	public int get_emergencyContact(){
		return emergencyContact;
	}
	
	public void set_emergencyContact(int emergencyContact){
		this.emergencyContact = emergencyContact;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_TITLE", unique = true, nullable = false, length = 4)
	public String get_title(){
		return title;
	}
	
	/**
	 * 
	 * @param title
	 */
	public void set_title(String title){
		this.title = title;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_FIRSTNAME", unique = true, nullable = false)
	public String get_firstName(){
		return firstName;
	}
	
	/**
	 * 
	 * @param firstName
	 */
	public void set_firstName(String firstName){
		this.firstName = firstName;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_MIDDLENAME", unique = true, nullable = true)
	public String get_middleName(){
		return middleName;
	}
	
	/**
	 * 
	 * @param middleName
	 */
	public void set_middleName(String middleName){
		this.middleName = middleName;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_LASTNAME", unique = true, nullable = false)
	public String get_lastName(){
		return lastName;
	}
	
	/**
	 * 
	 * @param lastName
	 */
	public void set_lastName(String lastName){
		this.lastName = lastName;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_ADDRESS1", unique = true, nullable = false)
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
	@Column(name = "SUBJECTEMERGENCYCONTACT_ADDRESS2", unique = true, nullable = true)
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
	@Column(name = "SUBJECTEMERGENCYCONTACT_CITY", unique = true, nullable = false)
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
	@Column(name = "SUBJECTEMERGENCYCONTACT_STATE", unique = true, nullable = false)
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
	@Column(name = "SUBJECTEMERGENCYCONTACT_ZIP", unique = true, nullable = false, length = 10)
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
	@Column(name = "SUBJECTEMERGENCYCONTACT_HOMEPHONE", unique = true, nullable = false, length = 10)
	public String get_homePhone () {
		return homePhone;
	}
	
	/**
	 * 
	 * @param homePhone
	 */
	public void set_homePhone (String homePhone){
		this.homePhone = homePhone;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_MOBILEPHONE", unique = true, nullable = true, length = 10)
	public String get_mobilePhone () {
		return mobilePhone;
	}
	
	/**
	 * 
	 * @param mobilePhone
	 */
	public void set_mobilePhone (String mobilePhone){
		this.mobilePhone = mobilePhone;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTEMERGENCYCONTACT_EMAIL", unique = true, nullable = true)
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
