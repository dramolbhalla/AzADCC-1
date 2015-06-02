package com.web.common;

import static javax.persistence.GenerationType.IDENTITY;

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
@Table(name = "SUBJECT_EXPIRED", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECTEXPIRED_SUBJECTEXPIRED"),
		@UniqueConstraint(columnNames = "SUBJECTEXPIRED_SUBJECTEXPIREDAGE"),
		@UniqueConstraint(columnNames = "SUBJECTEXPIRED_SUBJECTEXPIREDDATE"),
		@UniqueConstraint(columnNames = "SUBJECTEXPIRED_SUBJECTEXPIREDMONTH"),
		@UniqueConstraint(columnNames = "SUBJECTEXPIRED_SUBJECTEXPIREDYEAR"),
		@UniqueConstraint(columnNames = "SUBJECTEXPIRED_SUBJECTEXPIREDREASON")})
@DiscriminatorValue("SUBJECT_EXPIRED")
@PrimaryKeyJoinColumn(name="SUBJECT_ID")
public class SubjectExpired {

	
	private Subject subjectId;
	private int expired;
	private boolean subjectExpired;
	private int subjectExpiredAge;
	private int subjectExpiredDate;
	private int subjectExpiredMonth;
	private int subjectExpiredYear;
	private String subjectExpiredReason; 
	
	/**
	 * Empty class constructor for subject table.
	 */
	public SubjectExpired(){
		
	}
	
	/**
	 * Default constructor for SubjectExpired Class
	 * @param subjectExpired
	 * @param subjectExpiredAge
	 * @param subjectExpiredDate
	 * @param subjectExpiredMonth
	 * @param subjectExpiredYear
	 * @param subjectExpiredReason
	 */
	public SubjectExpired(boolean subjectExpired, int subjectExpiredAge, int subjectExpiredDate, int subjectExpiredMonth, int subjectExpiredYear, String subjectExpiredReason){
		this.subjectExpired = subjectExpired;
		this.subjectExpiredAge = subjectExpiredAge;
		this.subjectExpiredDate = subjectExpiredDate;
		this.subjectExpiredMonth = subjectExpiredMonth;
		this.subjectExpiredYear = subjectExpiredYear;
		this.subjectExpiredReason = subjectExpiredReason;
	}
	
	/**
	 * 
	 * @param subjectExpired
	 * @param subjectExpiredAge
	 * @param subjectExpiredDate
	 * @param subjectExpiredMonth
	 * @param subjectExpiredYear
	 * @param subjectExpiredReason
	 * @param subjectId
	 */
	public SubjectExpired(boolean subjectExpired, int subjectExpiredAge, int subjectExpiredDate, int subjectExpiredMonth, int subjectExpiredYear, String subjectExpiredReason, Subject subjectId){
		this.subjectExpired = subjectExpired;
		this.subjectExpiredAge = subjectExpiredAge;
		this.subjectExpiredDate = subjectExpiredDate;
		this.subjectExpiredMonth = subjectExpiredMonth;
		this.subjectExpiredYear = subjectExpiredYear;
		this.subjectExpiredReason = subjectExpiredReason;
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
	 * @param userId
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
	@Column(name = "SUBJECTWORKINFO_EXPIRED", unique = true, nullable = false)
	public int get_expired(){
		return expired;
	}
	
	/**
	 * 
	 * @param expired
	 */
	public void set_expired(int expired){
		this.expired = expired;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTWORKINFO_SUBJECTEXPIRED", unique = true, nullable = true)
	public boolean get_subjectExpired (){
		return subjectExpired;
	}
	
	/**
	 * 
	 * @param subjectExpired
	 */
	public void set_subjectedExpired (boolean subjectExpired){
		this.subjectExpired = subjectExpired;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTWORKINFO_SUBJECTEXPIREDAGE", unique = true, nullable = true, length = 3)
	public int get_subjectExpiredAge (){
		return subjectExpiredAge;
	}
	
	/**
	 * 
	 * @param subjectExpiredAge
	 */
	public void set_subjectedExpiredAge (int subjectExpiredAge){
		this.subjectExpiredAge = subjectExpiredAge;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTWORKINFO_SUBJECTEXPIREDDATE", unique = true, nullable = true, length = 2)
	public int get_subjectExpiredDate (){
		return subjectExpiredDate;
	}
	
	/**
	 * 
	 * @param subjectExpiredDate
	 */
	public void set_subjectedExpiredDate (int subjectExpiredDate){
		this.subjectExpiredDate = subjectExpiredDate;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTWORKINFO_SUBJECTEXPIREDMONTH", unique = true, nullable = true, length = 2)
	public int get_subjectExpiredMonth (){
		return subjectExpiredMonth;
	}
	
	/**
	 * 
	 * @param subjectExpiredDate
	 */
	public void set_subjectedExpiredMonth (int subjectExpiredMonth){
		this.subjectExpiredMonth = subjectExpiredMonth;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTWORKINFO_SUBJECTEXPIREDYEAR", unique = true, nullable = true, length = 4)
	public int get_subjectExpiredYear (){
		return subjectExpiredYear;
	}
	
	/**
	 * 
	 * @param subjectExpiredDate
	 */
	public void set_subjectedExpiredYear (int subjectExpiredYear){
		this.subjectExpiredYear = subjectExpiredYear;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTWORKINFO_SUBJECTEXPIREDREASON", unique = true, nullable = true)
	public String get_subjectExpiredReason (){
		return subjectExpiredReason;
	}
	
	/**
	 * 
	 * @param subjectExpiredAge
	 */
	public void set_subjectedExpiredReason (String subjectExpiredReason){
		this.subjectExpiredReason = subjectExpiredReason;
	}
}
