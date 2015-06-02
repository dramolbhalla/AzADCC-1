/**
 * @author Amol Bhalla
 */

package com.web.common;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Header implements Serializable {
	User user;
	Subject subject;
	
	int header;
	String packet;
	String formid;
	int formver;
	int adcid;
	String ptid;
	int visitmo;
	int visitday;
	int visityr;
	int visitnum;
	String initials;
	
	public Header() {
		super();
	}
	
	public Header(String packet, String formid, int formver, int adcid,
			String ptid, int visitmo, int visitday, int visityr, int visitnum,
			String initials) {
		super();
		this.packet = packet;
		this.formid = formid;
		this.formver = formver;
		this.adcid = adcid;
		this.ptid = ptid;
		this.visitmo = visitmo;
		this.visitday = visitday;
		this.visityr = visityr;
		this.visitnum = visitnum;
		this.initials = initials;
	}
	
	public Header(User user, Subject subject, int header, String packet,
			String formid, int formver, int adcid, String ptid, int visitmo,
			int visitday, int visityr, int visitnum, String initials) {
		super();
		this.user = user;
		this.subject = subject;
		this.header = header;
		this.packet = packet;
		this.formid = formid;
		this.formver = formver;
		this.adcid = adcid;
		this.ptid = ptid;
		this.visitmo = visitmo;
		this.visitday = visitday;
		this.visityr = visityr;
		this.visitnum = visitnum;
		this.initials = initials;
	}
	
	@ManyToOne
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@ManyToOne
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public int getHeader() {
		return header;
	}
	public void setHeader(int header) {
		this.header = header;
	}
	public String getPacket() {
		return packet;
	}
	public void setPacket(String packet) {
		this.packet = packet;
	}
	public String getFormid() {
		return formid;
	}
	public void setFormid(String formid) {
		this.formid = formid;
	}
	public int getFormver() {
		return formver;
	}
	public void setFormver(int formver) {
		this.formver = formver;
	}
	public int getAdcid() {
		return adcid;
	}
	public void setAdcid(int adcid) {
		this.adcid = adcid;
	}
	@Id
	@GeneratedValue
	public String getPtid() {
		return ptid;
	}
	public void setPtid(String ptid) {
		this.ptid = ptid;
	}
	public int getVisitmo() {
		return visitmo;
	}
	public void setVisitmo(int visitmo) {
		this.visitmo = visitmo;
	}
	public int getVisitday() {
		return visitday;
	}
	public void setVisitday(int visitday) {
		this.visitday = visitday;
	}
	public int getVisityr() {
		return visityr;
	}
	public void setVisityr(int visityr) {
		this.visityr = visityr;
	}
	public int getVisitnum() {
		return visitnum;
	}
	public void setVisitnum(int visitnum) {
		this.visitnum = visitnum;
	}
	public String getInitials() {
		return initials;
	}
	public void setInitials(String initials) {
		this.initials = initials;
	}
}
