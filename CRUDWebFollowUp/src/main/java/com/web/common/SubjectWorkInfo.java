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
@Table(name = "SUBJECT_WORK_INFO", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_WORKINFO"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_ADDRESS1"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_ADDRESS2"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_CITY"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_STATE"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_ZIP"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_WORKPHONE"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_EXTENSION"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_FAX"),
		@UniqueConstraint(columnNames = "SUBJECTWORKINFO_EMAIL") })
@DiscriminatorValue("SUBJECT_WORKL_INFO")
@PrimaryKeyJoinColumn(name="SUBJECT_ID")
public class SubjectWorkInfo implements Serializable{
	
	
	private Subject subjectId;
	private int workInfo;
	private String address1; 
	private String address2; 
	private String city; 
	private String state; 
	private String zip; 
	private String workPhone; 
	private String extension; 
	private String fax; 
	private String email; 
	
	/**
	 * Empty class constructor for subject table.
	 */
	public SubjectWorkInfo(){
		
	}
	
	/**
	 * Default constructor for SubjectWorkInfo table.
	 * @param address1
	 * @param address2
	 * @param city
	 * @param state
	 * @param zip
	 * @param workPhone
	 * @param extension
	 * @param fax
	 * @param email
	 */
	public SubjectWorkInfo(String address1, String address2, String city, String state, String zip, String workPhone, String extension, String fax, String email){
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.workPhone = workPhone;
		this.extension = extension;
		this.fax = fax;
		this.email = email;
	}
	
	public SubjectWorkInfo(String address1, String address2, String city, String state, String zip, String workPhone, String extension, String fax, String email, Subject subjectId){
		this.address1 = address1;
		this.address2 = address2;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.workPhone = workPhone;
		this.extension = extension;
		this.fax = fax;
		this.email = email;
		this.subjectId = subjectId;
	}
		
	
	// ++------------------ getters and setters ------------------++
	
	
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
	@Column(name = "SUBJECTWORKINFO_WORKINFO", unique = true, nullable = false)
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
	@Column(name = "SUBJECTWORKINFO_ADDRESS1", unique = true, nullable = false)
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
	@Column(name = "SUBJECTWORKINFO_ADDRESS2", unique = true, nullable = true)
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
	@Column(name = "SUBJECTWORKINFO_CITY", unique = true, nullable = false)
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
	@Column(name = "SUBJECTWORKINFO_STATE", unique = true, nullable = false)
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
	@Column(name = "SUBJECTWORKINFO_ZIP", unique = true, nullable = false, length = 9)
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
	@Column(name = "SUBJECTWORKINFO_WORKPHONE", unique = true, nullable = false, length = 10)
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
	@Column(name = "SUBJECTWORKINFO_EXTENSION", unique = true, nullable = true)
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
	@Column(name = "SUBJECTWORKINFO_FAX", unique = true, nullable = true)
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
	@Column(name = "SUBJECTWORKINFO_EMAIL", unique = true, nullable = true)
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
