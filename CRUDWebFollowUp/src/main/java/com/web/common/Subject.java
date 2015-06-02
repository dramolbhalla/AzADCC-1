/**
 * @author Amol Bhalla
 *
 */
package com.web.common;

import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;


@Entity 
@Table(name = "SUBJECT", catalog = "subjectdb", uniqueConstraints = {
		@UniqueConstraint(columnNames = "SUBJECT_ID"),
		@UniqueConstraint(columnNames = "SUBJECT_SUBJECTID"),
		@UniqueConstraint(columnNames = "SUBJECT_CLINICID") })
@Inheritance(strategy=InheritanceType.JOINED)
@DiscriminatorValue("SUBJECT")
public class Subject implements Serializable{
	
	private int sid;
	private String subjectId;
	private Clinic clinic;
	private Set<SubjectLog> subjectLogs;
	private Set<SubjectNote> subjectNotes;
	private SubjectPersonalInfo subjectPersonalInfo;
	
	/**
	 * Empty class constructor for subject table.
	 */
	public Subject(){
		
	}
	
	/**
	 * 
	 * @param subjectId
	 * @param clinicId
	 */
	public Subject(String subjectId){
		this.subjectId = subjectId;
	}
	
	public Subject(String subjectId, Clinic clinic){
		this.subjectId = subjectId;
		this.clinic = clinic;
	}
	
	/**
	 * 
	 * @return
	 */
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "SUBJECT_ID", unique = true, nullable = false)
	public int get_sid(){
	     return sid;
	}
	
	/**
	 * 
	 * @param sid
	 */
	public void set_sid(int sid){
		this.sid = sid;
	}
	
	/**
	 * 
	 * @return
	 */
	@Column(name = "SUBJECT_SUBJECTID", unique = true, nullable = false, length = 10)
	public String get_subjectId(){
		return subjectId;
	}
	
	/**
	 * 
	 * @param userId
	 */
	public void set_subjectId(String subjectId){
		this.subjectId = subjectId;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY)
	@PrimaryKeyJoinColumn(name="CLINIC_ID")
	public Clinic get_Clinic(){
		return clinic;
	}
	
	/**
	 * 
	 * @param clinic
	 */
	public void set_Clinic(Clinic clinic){
		this.clinic = clinic;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "SUBJECT")
	public Set<SubjectLog> get_SubjectLog(){
		return subjectLogs;
	}
	
	/**
	 * 
	 * @param subjectLog
	 */
	public void set_SubjectLog(Set<SubjectLog> subjectLogs){
		this.subjectLogs = subjectLogs;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "SUBJECT")
	public Set<SubjectNote> get_SubjectNotes () {
		return subjectNotes;
	}
	
	/**
	 * 
	 * @param subjectNote
	 */
	public void set_SubjectNotes (Set<SubjectNote> subjectNote){
		this.subjectNotes = subjectNote;
	}
	
	/**
	 * 
	 * @return
	 */
	@OneToOne(fetch = FetchType.LAZY, mappedBy = "SUBJECT", cascade = CascadeType.ALL)
	public SubjectPersonalInfo get_SubjectPersonalInfo(){
		return subjectPersonalInfo;
	}
	
	/**
	 * 
	 * @param subjectPersonalInfo
	 */
	public void set_SubjectPersonalInfo (SubjectPersonalInfo subjectPersonalInfo){
		this.subjectPersonalInfo = subjectPersonalInfo;
	}
}
