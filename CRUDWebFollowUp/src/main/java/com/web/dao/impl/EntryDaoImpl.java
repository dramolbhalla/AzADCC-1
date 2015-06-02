package com.web.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.EntryDao;
import com.web.model.FollowupA3;

@Repository
public class EntryDaoImpl implements EntryDao 
{
	@Autowired
	private SessionFactory session;
	
	public Object retrieveFormDetails(int ptid, int visitnum, Character packet, String formid, int formver)
	{
		StringBuilder qr = new StringBuilder();
		try
		{
			qr.append("FROM Header h WHERE h.ptid = ");qr.append(ptid);
							   qr.append(" AND h.packet = '");qr.append(packet);
							   qr.append("' AND h.visitnum = ");qr.append(visitnum);
							   qr.append(" AND h.formid = '");qr.append(formid);
							   qr.append("' AND h.formver = ");qr.append(formver);
			List<Object> res = session.getCurrentSession().createQuery(qr.toString()).list();
			if(res.isEmpty()){
				return null;
			}
			else if(res.size()>1){
				System.err.print("That is strange, I should not have more than one visit ["+visitnum+"] for the same form ["+packet+formid+"] and patient ID ["+ptid+"], check the integrity of the DB... Manage the error");
				return null;
			}
			else{
				return res.get(0);
			}
		}catch(Exception e){
			System.err.print("An error occured when querying the DB with the request: ["+qr.toString()+"]: "+e.getMessage());
			return null;
		}
	}
	/**
	 * Retrieve the details of the form in the DB for the parameters given
	 * @return the model if found, null if not found or error
	 */
	public Object retrieveForm(int detailsid, Character packet, String formid, int formver)
	{
		if(packet=='F' && formid.equals("A3") && formver==3)
			return getFormA3(detailsid);
		else
			return getGeneralForm(detailsid, packet, formid, formver);
		

	}
	/**
	 * Because the FollowupA3 can't be loaded by hibernate (too many parameter we have to deal with it manually...)
	 * @param detailsid
	 * @return
	 */
	protected Object getFormA3(int detailsid) 
	{
		try
		{
			FollowupA3 f = new FollowupA3(session, detailsid);
			System.out.print("Yep created: "+f.getA3());
			return f;
			
		}catch(Exception e){
			System.err.print("Impossible to get the Form A3 for the given detailsid ["+detailsid+"], return null:"+e.getMessage());
			return null;
		}
	}
	protected Object getGeneralForm(int detailsid, Character packet, String formid, int formver)
	{
		StringBuilder qr = new StringBuilder();
		try
		{
			String tableName = "";
			if(packet=='I'){
				tableName = "Initial"+formid;
			}
			else if(packet=='F'){
				tableName = "Followup"+formid;
			}
			else{
				throw new Exception("Unknown packet Character ["+packet+"], I or F expected.");
			}
			qr.append("FROM "+tableName+" f WHERE f."+formid.toLowerCase()+" = ");qr.append(detailsid);
			List<Object> res = session.getCurrentSession().createQuery(qr.toString()).list();
			if(res.isEmpty()){
				return null;
			}
			else if(res.size()>1){
				System.err.print("That is strange, I should not have more than one line ["+detailsid+"] for the form ["+packet+formid+"], check the integrity of the DB... Manage the error");
				return null;
			}
			else{
				return res.get(0);
			}
		}catch(Exception e){
			System.err.print("An error occured when querying the DB with the request: ["+qr.toString()+"]: "+e.getMessage());
			return null;
		}
	}
}
