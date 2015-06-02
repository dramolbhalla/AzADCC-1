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
@Table(name = "USER_PERSONAL_INFO", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USERPERSONALINFO_PERSONALINFO"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_TITLE"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_FIRSTNAME"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_MIDDLENAME"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_LASTNAME"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_INITIALS"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_DEPARTMENT"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_PROFTITLE"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_DESIGNATIONS"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_ADDRESS1"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_ADDRESS2"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_CITY"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_STATE"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_ZIP"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_HOMEPHONE"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_MOBILEPHONE"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_SSN"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_BIRTHDATE"),
		@UniqueConstraint(columnNames = "USERPERSONALINFO_EMAIL") })
@DiscriminatorValue("USER_PERSONAL_INFO")
@PrimaryKeyJoinColumn(name="USER_ID")
public class UserPersonalInfo implements Serializable{
	
	
	private User user;
	private int personalInfo;
	private String title;
	private String firstName;
	private String middleName;
	private String lastName;
	private String initials;
	private String department; 
	private String profTitle;
	private String designations;
	private String address1; 
	private String address2; 
	private String city; 
	private String state; 
	private String zip;  
	private String homePhone; 
	private String mobilePhone; 
	private String ssn;  
	private String birthdate;
	private String email; 
	
	/**
	 * Default blank constructor for UserPersonalInfo table
	 */
	public UserPersonalInfo(){
		
	}
	
	/**
	 * Default constructor for UserPersonalInfo
	 * @param address1
	 * @param address2
	 * @param birthdate
	 * @param city
	 * @param department
	 * @param designations
	 * @param email
	 * @param firstName
	 * @param homePhone
	 * @param initials
	 * @param lastName
	 * @param middleName
	 * @param mobilePhone
	 * @param profTitle
	 * @param ssn
	 * @param state
	 * @param title
	 * @param zip
	 */
	public UserPersonalInfo(String address1, String address2, String birthdate, String city, String department, String designations, String email, String firstName, String homePhone, String initials, String lastName, String middleName, String mobilePhone, String profTitle, String ssn, String state, String title, String zip){
		this.address1 = address1;
		this.address2 = address2;
		this.birthdate = birthdate;
		this.city = city;
		this.department = department;
		this.email = email;
		this.firstName = firstName;
		this.homePhone = homePhone;
		this.initials = initials;
		this.lastName = lastName;
		this.middleName = middleName;
		this.mobilePhone = mobilePhone;
		this.profTitle = profTitle;
		this.ssn = ssn;
		this.state = state;
		this.title = title;
		this.zip = zip;		
	}
	
	public UserPersonalInfo(String address1, String address2, String birthdate, String city, String department, String designations, String email, String firstName, String homePhone, String initials, String lastName, String middleName, String mobilePhone, String profTitle, String ssn, String state, String title, String zip, User user){
		this.address1 = address1;
		this.address2 = address2;
		this.birthdate = birthdate;
		this.city = city;
		this.department = department;
		this.email = email;
		this.firstName = firstName;
		this.homePhone = homePhone;
		this.initials = initials;
		this.lastName = lastName;
		this.middleName = middleName;
		this.mobilePhone = mobilePhone;
		this.profTitle = profTitle;
		this.ssn = ssn;
		this.state = state;
		this.title = title;
		this.zip = zip;
		this.user = user;
	}
	
	//Getter and Setters
	
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="USER_ID")
	public User get_UserId(){
		return user;
	}
	
	/**
	 * 
	 * @param user
	 */
	public void set_UserId(User user){
		this.user = user;
	}
	
	/**
	 * 
	 * @return
	 */
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "USERPERSONALINFO_PERSONALINFO", unique = true, nullable = false)
	public int get_personalInfo(){
		return personalInfo;
	}
	
	/**
	 * 
	 * @param personalInfo
	 */
	public void set_personalInfo(int personalInfo){
		this.personalInfo = personalInfo;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_TITLE", unique = true, nullable = true)
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
	@Column(name = "USERPERSONALINFO_FIRSTNAME", unique = true, nullable = false)
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
	@Column(name = "USERPERSONALINFO_MIDDLENAME", unique = true, nullable = true)
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
	@Column(name = "USERPERSONALINFO_LASTNAME", unique = true, nullable = false)
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
	@Column(name = "USERPERSONALINFO_INITIALS", unique = true, nullable = false)
	public String get_initials(){
		return initials;
	}
	
	/**
	 * 
	 * @param lastName
	 */
	public void set_initials(String initials){
		this.initials = initials;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_DEPARTMENT", unique = true, nullable = true)
	public String get_department(){
		return department;
	}
	
	/**
	 * 
	 * @param department
	 */
	public void set_department(String department){
		this.department = department;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_PROFTITLE", unique = true, nullable = true)
	public String get_profTitle (){
		return profTitle;
	}
	
	/**
	 * 
	 * @param profTitle
	 */
	public void set_profTitle (String profTitle){
		this.profTitle = profTitle;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_DESIGNATIONS", unique = true, nullable = true)
	public String get_designations (){
		return designations;
	}
	
	/**
	 * 
	 * @param designations
	 */
	public void set_designations (String designations){
		this.designations = designations;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_ADDRESS1", unique = true, nullable = false)
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
	@Column(name = "USERPERSONALINFO_ADDRESS2", unique = true, nullable = true)
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
	@Column(name = "USERPERSONALINFO_CITY", unique = true, nullable = false)
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
	@Column(name = "USERPERSONALINFO_STATE", unique = true, nullable = false)
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
	@Column(name = "USERPERSONALINFO_ZIP", unique = true, nullable = false, length = 9)
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
	@Column(name = "USERPERSONALINFO_HOMEPHONE", unique = true, nullable = false, length = 10)
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
	@Column(name = "USERPERSONALINFO_MOBILEPHONE", unique = true, nullable = true)
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
	@Column(name = "USERPERSONALINFO_SSN", unique = true, nullable = false, length = 9)
	public String get_ssn () {
		return ssn;
	}
	
	/**
	 * 
	 * @param ssn
	 */
	public void set_ssn (String ssn){
		this.ssn = ssn;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_BIRTHDATE", unique = true, nullable = false, length = 8)
	public String get_birthdate () {
		return birthdate;
	}
	
	/**
	 * 
	 * @param birthdate
	 */
	public void set_birthdate (String birthdate){
		this.birthdate = birthdate;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USERPERSONALINFO_EMAIL", unique = true, nullable = true)
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
