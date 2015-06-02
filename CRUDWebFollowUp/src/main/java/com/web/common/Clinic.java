/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.*;

@Entity 
@Table(name = "CLINIC", catalog = "clinicdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "CLINIC_CLINICID"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICNUMBER"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICNAME"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICCONTACTNAME"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICCONTACTTITLE"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICCONTACTFIRSTNAME"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICCONTACTLASTNAME"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICCONTACTJOBTITLE"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICADDRESS1"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICADDRESS2"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICCITY"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICSTATE"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICAZIP"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICPHONE"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICEXTENSION"),
		@UniqueConstraint(columnNames = "CLINIC_CLINICFAX"), 
		@UniqueConstraint(columnNames = "CLINIC_CLINICNOTE")})
@Inheritance(strategy=InheritanceType.JOINED)
@DiscriminatorValue("CLINIC")
public class Clinic implements Serializable{

	int cid;	
	String clinicId;
	String clinicNumber;  
	String clinicName; 
	String clinicContactTitle;
	String clinicContactFirstName;
	String clinicContactLastName;
	String clinicContactJobTitle;
	String clinicAddress1; 
	String clinicAddress2; 
	String clinicCity; 
	String clinicState;  
	String clinicZip; 
	String clinicPhone;
	String clinicExtension;
	String clinicFax; 
	String clinicNote;
	
	/**
	 * Default blank constructor for Clinic
	 */
	public Clinic(){
		
	}
	
	/**
	 * Default constructor for Clinic.
	 * @param clinicAddress1
	 * @param clinicAddress2
	 * @param clinicCity
	 * @param clinicContactFirstName
	 * @param clinicContactJobTitle
	 * @param clinicContactLastName
	 * @param clinicContactTitle
	 * @param clinicFax
	 * @param clinicId
	 * @param clinicName
	 * @param clinicNote
	 * @param clinicNumber
	 * @param clinicPhone
	 * @param clinicState
	 * @param clinicZip
	 */
	public Clinic(String clinicAddress1, String clinicAddress2, String clinicCity, String clinicContactFirstName, String clinicContactJobTitle, String clinicContactLastName, String clinicContactTitle, String clinicExtension,String clinicFax,String clinicId, String clinicName, String clinicNote, String clinicNumber, String clinicPhone, String clinicState, String clinicZip){
		this.clinicAddress1 = clinicAddress1;
		this.clinicAddress2 = clinicAddress2;
		this.clinicCity = clinicCity;
		this.clinicContactFirstName = clinicContactFirstName;
		this.clinicContactJobTitle = clinicContactJobTitle;
		this.clinicContactLastName = clinicContactLastName;
		this.clinicContactTitle = clinicContactTitle;
		this.clinicExtension = clinicExtension;
		this.clinicFax = clinicFax;
		this.clinicId = clinicId; 
		this.clinicName = clinicName; 
		this.clinicNote = clinicNote; 
		this.clinicNumber = clinicNumber; 
		this.clinicPhone = clinicPhone; 
		this.clinicState = clinicState; 
		this.clinicZip = clinicZip;
	}
	
	//Getter and Setters
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "CLINIC_ID", unique = true, nullable = false)
	public int get_cid (){
		return cid;
	}
	
	public void set_cid( int cid){
		this.cid = cid;
	}
	
	@Column(name = "CLINIC_CLINICID", unique = true, nullable = false, length = 10)
	public String get_clinicId(){
		return clinicId;
	}
	
	public void set_clinicId(String clinicId){
		this.clinicId = clinicId;
	}
	
	@Column(name = "CLINIC_CLINICNUMBER", unique = true, nullable = false, length = 2)
	public String get_clinicNumber(){
		return clinicNumber;
	}
	
	public void set_clinicNumber(String clinicNumber){
		this.clinicNumber = clinicNumber;
	}
	
	@Column(name = "CLINIC_CLINICNAME", unique = true, nullable = false)
	public String get_clinicName(){
		return clinicName;
	}
	
	public void set_clinicName(String clinicName){
		this.clinicName = clinicName;
	}

	@Column(name = "CLINIC_CLINICTITLE", unique = true, nullable = true)
	public String get_clinicContactTitle(){
		return clinicContactTitle;
	}
	
	public void set_clinicContactTitle(String clinicContactTitle){
		this.clinicContactTitle = clinicContactTitle;
	}
	
	@Column(name = "CLINIC_CLINICFIRSTNAME", unique = true, nullable = false)
	public String get_clinicContactFirstName(){
		return clinicContactFirstName;
	}
	
	public void set_clinicContactFirstName(String clinicContactFirstName){
		this.clinicContactFirstName = clinicContactFirstName;
	}
	
	@Column(name = "CLINIC_CLINICCONTACTLASTNAME", unique = true, nullable = false)
	public String get_clinicContactLastName(){
		return clinicContactLastName;
	}
	
	public void set_clinicContactLastName(String clinicContactLastName){
		this.clinicContactLastName = clinicContactLastName;
	}
	
	@Column(name = "CLINIC_CLINICCONTACTJOBTITLE", unique = true, nullable = true)
	public String get_clinicContactJobTitle(){
		return clinicContactJobTitle;
	}
	
	public void set_clinicContactJobTitle(String clinicContactJobTitle){
		this.clinicContactJobTitle = clinicContactJobTitle;
	}
	
	@Column(name = "CLINIC_CLINICADDRESS1", unique = true, nullable = false)
	public String get_clinicAddress1(){
		return clinicAddress1;
	}
	
	public void set_clinicAddress1(String clinicAddress1){
		this.clinicAddress1 = clinicAddress1;
	}
	
	@Column(name = "CLINIC_CLINICADDRESS2", unique = true, nullable = true)
	public String get_clinicAddress2(){
		return clinicAddress2;
	}
	
	public void set_clinicAddress2(String clinicAddress2){
		this.clinicAddress2 = clinicAddress2;
	}
	
	@Column(name = "CLINIC_CLINICCITY", unique = true, nullable = false)
	public String get_clinicCity(){
		return clinicCity;
	}
	
	public void set_clinicCity(String clinicCity){
		this.clinicCity = clinicCity;
	}
	
	@Column(name = "CLINIC_CLINICSTATE", unique = true, nullable = false)
	public String get_clinicState(){
		return clinicState;
	}
	
	public void set_clinicState(String clinicState){
		this.clinicState = clinicState;
	}
	
	@Column(name = "CLINIC_CLINICZIP", unique = true, nullable = false, length = 9)
	public String get_clinicZip(){
		return clinicZip;
	}
	
	public void set_clinicZip(String clinicZip){
		this.clinicZip = clinicZip;
	}
	
	@Column(name = "CLINIC_CLINICPHONE", unique = true, nullable = false, length = 10)
	public String get_clinicPhone(){
		return clinicPhone;
	}
	
	public void set_clinicPhone(String clinicPhone){
		this.clinicPhone = clinicPhone;
	}
	
	@Column(name = "CLINIC_CLINICEXTENSION", unique = true, nullable = false, length = 10)
	public String get_clinicExtension(){
		return clinicExtension;
	}
	
	public void set_clinicExtension(String clinicExtension){
		this.clinicExtension = clinicExtension;
	}
	
	@Column(name = "CLINIC_CLINICFAX", unique = true, nullable = true, length = 10)
	public String get_clinicFax(){
		return clinicFax;
	}
	
	public void set_clinicFax(String clinicFax){
		this.clinicFax = clinicFax;
	}
	
	@Column(name = "CLINIC_CLINICNOTE", unique = true, nullable = true)
	public String get_clinicNote(){
		return clinicNote;
	}
	
	public void set_clinicNote(String clinicNote){
		this.clinicNote = clinicNote;
	}
}
