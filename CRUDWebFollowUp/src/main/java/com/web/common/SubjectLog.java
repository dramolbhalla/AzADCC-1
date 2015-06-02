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
@Table(name = "SUBJECT_LOG", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECTLOG_LOG"),
		@UniqueConstraint(columnNames = "SUBJECTLOG_SUBJECTLOG") })
@DiscriminatorValue("SUBJECT_LOG")
@PrimaryKeyJoinColumn(name="SUBJECT_ID")
public class SubjectLog implements Serializable{
	
	
	private Subject subjectId;
	private int log;
	private String subjectLog;
	
	/**
	 * Empty class constructor for subject table.
	 */
	public SubjectLog(){
		
	}
	
	/**
	 * Default constructor for SubjectLog table.
	 * @param subjectLog
	 */
	public SubjectLog(String subjectLog){
		this.subjectLog = subjectLog;
	}
	
	public SubjectLog(String subjectLog, Subject subjectId){
		this.subjectLog = subjectLog;
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
	 * @param subjectid
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
	@Column(name = "SUBJECTLOG_LOG", unique = true, nullable = false)
	public int get_log(){
		return log;
	}
	
	/**
	 * 
	 * @param log
	 */
	public void set_log(int log){
		this.log = log;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTLOG_SUBJECTLOG", unique = true, nullable = false)
	public String get_subjectLog(){
		return subjectLog;
	}
	
	/**
	 * 
	 * @param clinicId
	 */
	public void set_subjectLog(String subjectLog){
		this.subjectLog = subjectLog;
	}

}
