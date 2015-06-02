package com.web.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.dao.FollowupA3Dao;
import com.web.model.FollowupA3;
@Repository
public class FollowupA3DaoImpl implements FollowupA3Dao{
	
	@Autowired
	private SessionFactory session;

	@Override
	public void add(FollowupA3 followupa3) 
	{
		//since the constructor is not call (doesn't exist because of the 255 parameters limitation in Java)
		//the object is not updated with the new details, we have to do it by hand...
		Integer id = (Integer) session.getCurrentSession().save(followupa3);
		System.out.print("After insertion id:"+id);
		session.getCurrentSession().flush();
		session.getCurrentSession().clear();
		followupa3.setA3(id);
//		I leave the code here if needed to call a sql query remmber to flush and clear the session after save 
		//otherwise can't ask anything in DB, the stuff are in the layer of the cash of hibernate		
//		StringBuilder qr = new StringBuilder();
//		try
//		{
//			qr.append("SELECT a3 FROM FollowupA3 ");
//			List<Object> res = session.getCurrentSession().createSQLQuery(qr.toString()).list();
//			if(res.isEmpty()){
//				System.err.print("Impossible to retrieve the a3 inserted for the parameters [] check the code.");
//				followupa3.setA3(-1);
//			}
//			else if(res.size()>1){
//				followupa3.setA3((int)res.get(res.size()-1));
////				System.err.print("That is strange, I should not have more a3 for the parameters [], check the integrity of the DB... Manage the error");
////				followupa3.setA3(-1);
//			}
//			else{
//				followupa3.setA3((int)res.get(0));
//			}
//		}catch(Exception e){
//			System.err.print("An error occured when querying the table FollowupA3 to retrieve a3: ["+qr.toString()+"]: "+e.getMessage());
//			followupa3.setA3(-1);
//		}
		System.out.print("New Details ID: "+followupa3.getA3());
		
	}

	@Override
	public void edit(FollowupA3 followupa3) {
		session.getCurrentSession().update(followupa3);
		session.getCurrentSession().flush();
		session.getCurrentSession().clear();
	}

	@Override
	public void delete(int a3) {
		session.getCurrentSession().delete(getFollowupA3(a3));
		
	}

	@Override
	public FollowupA3 getFollowupA3(int a3) {
		return (FollowupA3)session.getCurrentSession().get(FollowupA3.class, a3);
	}

	@Override
	public List getAllFollowupA3() {
		return session.getCurrentSession().createQuery("from followupA3").list();
	}

}
