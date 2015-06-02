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
@Table(name = "SUBJECT_NOTE", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECTNOTE_NOTE"),
		@UniqueConstraint(columnNames = "SUBJECTNOTE_SUBJECTNOTE") })
@DiscriminatorValue("SUBJECT_NOTE")
@PrimaryKeyJoinColumn(name="SUBJECT_ID")
public class SubjectNote implements Serializable{
	
	
	private Subject subjectId;
	private int note;
	private String subjectNote;
	
	/**
	 * Empty class constructor for subject table.
	 */
	public SubjectNote(){
		
	}
	
	public SubjectNote(String subjectNote){
		this.subjectNote = subjectNote;
	}
	
	public SubjectNote(String subjectNote, Subject subjectId){
		this.subjectNote = subjectNote;
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
	
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "SUBJECTNOTE_NOTE", unique = true, nullable = false)
	public int get_note(){
		return note;
	}
	
	/**
	 * 
	 * @param note
	 */
	public void set_note(int note){
		this.note = note;
	}
	
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECTNOTE_SUBJECTNOTE", unique = true, nullable = false)
	public String get_subjectNote(){
		return subjectNote;
	}
	
	/**
	 * 
	 * @param clinicId
	 */
	public void set_subjectLog(String subjectNote){
		this.subjectNote = subjectNote;
	}

}
