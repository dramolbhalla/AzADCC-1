/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "SUBJECT_PERSONAL_INFO", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_PERSONALINFO"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_TITLE"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_FIRSTNAME"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_MIDDLENAME"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_LASTNAME"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_INITIALS"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_DEPARTMENT"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_PROFTITLE"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_DESIGNATIONS"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_ADDRESS1"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_ADDRESS2"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_CITY"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_STATE"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_ZIP"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_HOMEPHONE"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_MOBILEPHONE"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_SSN"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_BIRTHDATE"),
		@UniqueConstraint(columnNames = "SUBJECTPERSONALINFO_EMAIL") })
@DiscriminatorValue("SUBJECT_PERSONAL_INFO")
@PrimaryKeyJoinColumn(name="SUBJECT_ID")
public class SubjectPersonalInfo implements Serializable{
	
	
	private Subject subjectId;
	private int personalInfo;
	private String title;
	private String firstName;
	private String middleName;
	private String lastName;
	private String profTitle;
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
	private Set<SubjectEmergencyContact> subjectEmergencyContact;
	private SubjectExpired subjectExpired;
	private Set<SubjectWorkInfo> subjectWorkInfo;
	
	/**
	 * Empty class constructor for subject table.
	 */
	public SubjectPersonalInfo(){
		
	}
	
	/**
	 * Default constructor for SubjectPersonalInfo table.
	 * @param address1
	 * @param address2
	 * @param birthdate
	 * @param city
	 * @param email
	 * @param firstName
	 * @param homePhone
	 * @param lastName
	 * @param middleName
	 * @param mobilePhone
	 * @param profTitle
	 * @param ssn
	 * @param state
	 * @param title
	 * @param zip
	 */
	public SubjectPersonalInfo(String address1, String address2, String birthdate, String city, String email, String firstName, String homePhone, String lastName, String middleName, String mobilePhone, String profTitle, String ssn, String state, String title, String zip){
		this.address1 = address1;
		this.address2 = address2;
		this.birthdate = birthdate;
		this.city = city;
		this.email = email;
		this.firstName = firstName;
		this.homePhone = homePhone;
		this.lastName = lastName;
		this.middleName = middleName;
		this.mobilePhone = mobilePhone;
		this.profTitle = profTitle;
		this.ssn = ssn;
		this.state = state;
		this.title = title;
		this.zip = zip;
	}
	
	public SubjectPersonalInfo(String address1, String address2, String birthdate, String city, String email, String firstName, String homePhone, String lastName, String middleName, String mobilePhone, String profTitle, String ssn, String state, String title, String zip, Subject subjectId){
		this.address1 = address1;
		this.address2 = address2;
		this.birthdate = birthdate;
		this.city = city;
		this.email = email;
		this.firstName = firstName;
		this.homePhone = homePhone;
		this.lastName = lastName;
		this.middleName = middleName;
		this.mobilePhone = mobilePhone;
		this.profTitle = profTitle;
		this.ssn = ssn;
		this.state = state;
		this.title = title;
		this.zip = zip;
		this.subjectId = subjectId;
	}
	
	//getters and setters 
	
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
	
	/**
	 * 
	 * @return
	 */
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "SUBJECTPERSONALINFO_PERSONALINFO", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_TITLE", unique = true, nullable = true)
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
	@Column(name = "SUBJECTPERSONALINFO_FIRSTNAME", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_MIDDLENAME", unique = true, nullable = true)
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
	@Column(name = "SUBJECTPERSONALINFO_LASTNAME", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_PROFTITLE", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_ADDRESS1", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_ADDRESS2", unique = true, nullable = true)
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
	@Column(name = "SUBJECTPERSONALINFO_CITY", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_STATE", unique = true, nullable = false)
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
	@Column(name = "SUBJECTPERSONALINFO_ZIP", unique = true, nullable = false, length = 9)
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
	@Column(name = "SUBJECTPERSONALINFO_HOMEPHONE", unique = true, nullable = false, length = 10)
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
	@Column(name = "SUBJECTPERSONALINFO_MOBILEPHONE", unique = true, nullable = true)
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
	@Column(name = "SUBJECTPERSONALINFO_SSN", unique = true, nullable = false, length = 9)
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
	@Column(name = "SUBJECTPERSONALINFO_BIRTHDATE", unique = true, nullable = false, length = 8)
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
	public String get_email () {
		return email;
	}
	
	/**
	 * 
	 * @param email
	 */
	@Column(name = "SUBJECTPERSONALINFO_EMAIL", unique = true, nullable = true)
	public void set_email (String email){
		this.email = email;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "SUBJECT")
	public Set<SubjectEmergencyContact> get_SubjectEmergencyContact(){
		return subjectEmergencyContact;
	}
	
	/**
	 * 
	 * @param subjectEmergencyContact
	 */
	public void set_SubjectEmergencyContact(Set<SubjectEmergencyContact> subjectEmergencyContact){
		this.subjectEmergencyContact = subjectEmergencyContact;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="SUBJECT_ID")
	public SubjectExpired get_SubjectExpired(){
		return subjectExpired;
	}
	
	/**
	 * 
	 * @param subjectExpired
	 */
	public void set_SubjectExpired(SubjectExpired subjectExpired){
		this.subjectExpired = subjectExpired;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="SUBJECT_ID")
	public Set<SubjectWorkInfo> get_SubjectWorkInfo(){
		return subjectWorkInfo;
	}
	
	/**
	 * 
	 * @param subjectEmergencyContact
	 */
	public void set_SubjectWorkInfo(Set<SubjectWorkInfo> subjectWorkInfo){
		this.subjectWorkInfo = subjectWorkInfo;
	}
		

}
