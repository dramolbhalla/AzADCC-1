/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.*;

@Entity 
@Table(name = "CENTER", catalog = "centerdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "CENTER_CENTERID"),
		@UniqueConstraint(columnNames = "CENTER_CENTERNUMBER"),
		@UniqueConstraint(columnNames = "CENTER_CENTERNAME"),
		@UniqueConstraint(columnNames = "CENTER_CENTERCONTACTNAME"),
		@UniqueConstraint(columnNames = "CENTER_CENTERCONTACTTITLE"),
		@UniqueConstraint(columnNames = "CENTER_CENTERCONTACTFIRSTNAME"),
		@UniqueConstraint(columnNames = "CENTER_CENTERCONTACTLASTNAME"),
		@UniqueConstraint(columnNames = "CENTER_CENTERCONTACTJOBTITLE"),
		@UniqueConstraint(columnNames = "CENTER_CENTERADDRESS1"),
		@UniqueConstraint(columnNames = "CENTER_CENTERADDRESS2"),
		@UniqueConstraint(columnNames = "CENTER_CENTERCITY"),
		@UniqueConstraint(columnNames = "CENTER_CENTERSTATE"),
		@UniqueConstraint(columnNames = "CENTER_CENTERAZIP"),
		@UniqueConstraint(columnNames = "CENTER_CENTERPHONE"),
		@UniqueConstraint(columnNames = "CENTER_CENTEREXTENSION"),
		@UniqueConstraint(columnNames = "CENTER_CENTERFAX"), 
		@UniqueConstraint(columnNames = "CENTER_CENTERNOTE")})
@Inheritance(strategy=InheritanceType.JOINED)
@DiscriminatorValue("CENTER")
public class Center implements Serializable{
	
	int cid;
	String centerId;
	String centerNumber;  
	String centerName; 
	String centerContactTitle;
	String centerContactFirstName;
	String centerContactLastName;
	String centerContactJobTitle;
	String centerAddress1; 
	String centerAddress2; 
	String centerCity; 
	String centerState;  
	String centerZip; 
	String centerPhone; 
	String centerExtension;
	String centerFax; 
	String centerNote;
	
	/**
	 * Default blank constructor for center
	 */
	public Center(){
		
	}
	
	/**
	 * Default constructor for center.
	 * @param centerAddress1
	 * @param centerAddress2
	 * @param centerCity
	 * @param centerContactFirstName
	 * @param centerContactJobTitle
	 * @param centerContactLastName
	 * @param centerContactTitle
	 * @param centerFax
	 * @param centerId
	 * @param centerName
	 * @param centerNote
	 * @param centerNumber
	 * @param centerPhone
	 * @param centerState
	 * @param centerZip
	 */
	public Center(String centerAddress1, String centerAddress2, String centerCity, String centerContactFirstName, String centerContactJobTitle, String centerContactLastName, String centerContactTitle, String centerExtension, String centerFax,String centerId, String centerName, String centerNote, String centerNumber, String centerPhone, String centerState, String centerZip){
		this.centerAddress1 = centerAddress1;
		this.centerAddress2 = centerAddress2;
		this.centerCity = centerCity;
		this.centerContactFirstName = centerContactFirstName;
		this.centerContactJobTitle = centerContactJobTitle;
		this.centerContactLastName = centerContactLastName;
		this.centerContactTitle = centerContactTitle;
		this.centerExtension = centerExtension;
		this.centerFax = centerFax;
		this.centerId = centerId; 
		this.centerName = centerName; 
		this.centerNote = centerNote; 
		this.centerNumber = centerNumber; 
		this.centerPhone = centerPhone; 
		this.centerState = centerState; 
		this.centerZip = centerZip;
	}
	
	//Getter and Setters
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "CENTER_ID", unique = true, nullable = false)
	public int get_cid (){
		return cid;
	}
	
	public void set_cid( int cid){
		this.cid = cid;
	}
	
	@Column(name = "CENTER_CENTERID", unique = true, nullable = false, length = 10)
	public String get_centerId(){
		return centerId;
	}
	
	public void set_centerId(String centerId){
		this.centerId = centerId;
	}
	
	@Column(name = "CENTER_CENTERNUMBER", unique = true, nullable = false, length = 2)
	public String get_centerNumber(){
		return centerNumber;
	}
	
	public void set_centerNumber(String centerNumber){
		this.centerNumber = centerNumber;
	}
	
	@Column(name = "CENTER_CENTERNAME", unique = true, nullable = false)
	public String get_centerName(){
		return centerName;
	}
	
	public void set_centerName(String centerName){
		this.centerName = centerName;
	}

	@Column(name = "CENTER_CENTERTITLE", unique = true, nullable = true)
	public String get_centerContactTitle(){
		return centerContactTitle;
	}
	
	public void set_centerContactTitle(String centerContactTitle){
		this.centerContactTitle = centerContactTitle;
	}
	
	@Column(name = "CENTER_CENTERFIRSTNAME", unique = true, nullable = false)
	public String get_centerContactFirstName(){
		return centerContactFirstName;
	}
	
	public void set_centerContactFirstName(String centerContactFirstName){
		this.centerContactFirstName = centerContactFirstName;
	}
	
	@Column(name = "CENTER_CENTERCONTACTLASTNAME", unique = true, nullable = false)
	public String get_centerContactLastName(){
		return centerContactLastName;
	}
	
	public void set_centerContactLastName(String centerContactLastName){
		this.centerContactLastName = centerContactLastName;
	}
	
	@Column(name = "CENTER_CENTERCONTACTJOBTITLE", unique = true, nullable = true)
	public String get_centerContactJobTitle(){
		return centerContactJobTitle;
	}
	
	public void set_centerContactJobTitle(String centerContactJobTitle){
		this.centerContactJobTitle = centerContactJobTitle;
	}
	
	@Column(name = "CENTER_CENTERADDRESS1", unique = true, nullable = false)
	public String get_centerAddress1(){
		return centerAddress1;
	}
	
	public void set_centerAddress1(String centerAddress1){
		this.centerAddress1 = centerAddress1;
	}
	
	@Column(name = "CENTER_CENTERADDRESS2", unique = true, nullable = true)
	public String get_centerAddress2(){
		return centerAddress2;
	}
	
	public void set_centerAddress2(String centerAddress2){
		this.centerAddress2 = centerAddress2;
	}
	
	@Column(name = "CENTER_CENTERCITY", unique = true, nullable = false)
	public String get_centerCity(){
		return centerCity;
	}
	
	public void set_centerCity(String centerCity){
		this.centerCity = centerCity;
	}
	
	@Column(name = "CENTER_CENTERSTATE", unique = true, nullable = false)
	public String get_centerState(){
		return centerState;
	}
	
	public void set_centerState(String centerState){
		this.centerState = centerState;
	}
	
	@Column(name = "CENTER_CENTERZIP", unique = true, nullable = false, length = 9)
	public String get_centerZip(){
		return centerZip;
	}
	
	public void set_centerZip(String centerZip){
		this.centerZip = centerZip;
	}
	
	@Column(name = "CENTER_CENTERPHONE", unique = true, nullable = false, length = 10)
	public String get_centerPhone(){
		return centerPhone;
	}
	
	public void set_centerPhone(String centerPhone){
		this.centerPhone = centerPhone;
	}
	
	@Column(name = "CENTER_CENTEREXTENSION", unique = true, nullable = false, length = 10)
	public String get_centerExtension(){
		return centerExtension;
	}
	
	public void set_clinicExtension(String centerExtension){
		this.centerExtension = centerExtension;
	}
	
	@Column(name = "CENTER_CENTERFAX", unique = true, nullable = true, length = 10)
	public String get_centerFax(){
		return centerFax;
	}
	
	public void set_centerFax(String centerFax){
		this.centerFax = centerFax;
	}
	
	@Column(name = "CENTER_CENTERNOTE", unique = true, nullable = true)
	public String get_centerNote(){
		return centerNote;
	}
	
	public void set_centerNote(String centerNote){
		this.centerNote = centerNote;
	}
}
