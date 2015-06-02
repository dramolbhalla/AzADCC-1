package com.web.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * The header for each form, contains PTID, VisitNumber, Version, Packet(Initial or Followup) and Form ID (A1, B1 etc.) 
 * @author Davy
 *
 */
@Entity
public class Header implements Serializable  
{
    private static final long serialVersionUID = 1L;
    @Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
    int header;
    
    @Column
    int ptid;

    @Column
    int visitnum;

    @Column
    Character packet;

    @Column
    String formid;

    @Column
    int formver;

    @Column
    int detailsid;  
    @Column
    int adcid;
    @Column
    int visitmo;
    @Column
    int visitday;
    @Column
    int visityr;
    @Column
    String initials;
    
    public Header()
    {
    	super();
    }
    public Header(int ptid, int visitnum, Character packet, String formid, int formver, int adcid, int detailsid, int visitmo, int visitday, int visityr, String initials)
    {
    	super();
    	setPtid(ptid);
    	setVisitnum(visitnum);
    	setPacket(packet);
    	setFormid(formid);
    	setFormver(formver);
    	setAdcid(adcid);
    	setDetailsid(detailsid);
    	setVisitday(visitday);
    	setVisitmo(visitmo);
    	setVisityr(visityr);
    }
	public int getPtid() {
		return ptid;
	}
	public void setPtid(int ptid) {
		this.ptid = ptid;
	}
	public int getVisitnum() {
		return visitnum;
	}
	public void setVisitnum(int visitnum) {
		this.visitnum = visitnum;
	}
	public Character getPacket() {
		return packet;
	}
	public void setPacket(Character packet) {
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
	public int getDetailsid() {
		return detailsid;
	}
	public void setDetailsid(int detailsid) {
		this.detailsid = detailsid;
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
	public String getInitials() {
		return initials;
	}
	public void setInitials(String initials) {
		this.initials = initials;
	}
}
