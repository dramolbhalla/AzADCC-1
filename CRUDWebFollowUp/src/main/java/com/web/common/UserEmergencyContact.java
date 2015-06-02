/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.*;
import javax.persistence.OneToOne;

@Entity 
@Table(name = "USER_EMERGENCY_CONTACT", catalog = "userdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_EMERGENCYCONTACT"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_TITLE"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_FIRSTNAME"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_MIDDLENAME"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_LASTNAME"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_ADDRESS1"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_ADDRESS2"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_CITY"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_STATE"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_ZIP"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_HOMEPHONE"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_MOBILEPHONE"),
		@UniqueConstraint(columnNames = "USEREMERGENCYCONTACT_EMAIL") })
@DiscriminatorValue("USER_EMERGENCY_CONTACT")
@PrimaryKeyJoinColumn(name="USER_ID")
public class UserEmergencyContact implements Serializable {
	
	private User user;
	private int emergencyContact;
	String title;
	String firstName;
	String middleName;
	String lastName;
	String address1; 
	String address2; 
	String city; 
	String state; 
	String zip;  
	String homePhone; 
	String mobilePhone;
	String email;
	
	/**
	 * Default blank constructor of UserEmergencyContact
	 */
	public UserEmergencyContact(){
		
	}
	
	/**
	 * Default constructor for UserEmergencyContact
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
	public UserEmergencyContact(String address1, String address2, String city, String email, String firstName, String homePhone, String lastName, String middleName, String mobilePhone, String state, String title, String zip){
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
	
	public UserEmergencyContact(String address1, String address2, String city, String email, String firstName, String homePhone, String lastName, String middleName, String mobilePhone, String state, String title, String zip, User user){
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
	@Column(name = "USEREMERGENCYCONTACT_EMERGENCYCONTACT", unique = true, nullable = false)
	public int get_emergencyContact(){
		return emergencyContact;
	}
	
	/**
	 * 
	 * @param emergencyContact
	 */
	public void set_emergencyContact(int emergencyContact){
		this.emergencyContact = emergencyContact;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "USEREMERGENCYCONTACT_TITLE", unique = true, nullable = false, length = 4)
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
	@Column(name = "USEREMERGENCYCONTACT_FIRSTNAME", unique = true, nullable = false)
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
	@Column(name = "USEREMERGENCYCONTACT_MIDDLENAME", unique = true, nullable = true)
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
	@Column(name = "USEREMERGENCYCONTACT_LASTNAME", unique = true, nullable = false)
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
	 */	@Column(name = "USEREMERGENCYCONTACT_ADDRESS1", unique = true, nullable = false)
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
	@Column(name = "USEREMERGENCYCONTACT_ADDRESS2", unique = true, nullable = true)
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
	@Column(name = "USEREMERGENCYCONTACT_CITY", unique = true, nullable = false)
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
	@Column(name = "USEREMERGENCYCONTACT_STATE", unique = true, nullable = false)
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
	@Column(name = "USEREMERGENCYCONTACT_ZIP", unique = true, nullable = false, length = 10)
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
	@Column(name = "USEREMERGENCYCONTACT_HOMEPHONE", unique = true, nullable = false, length = 10)
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
	@Column(name = "USEREMERGENCYCONTACT_MOBILEPHONE", unique = true, nullable = true, length = 10)
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
	@Column(name = "USEREMERGENCYCONTACT_EMAIL", unique = true, nullable = true)
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
