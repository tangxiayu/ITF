package cuit.math.activity.service;

import cuit.math.activity.dao.ActivityDao;

public class ActivityServiceImp {
	ActivityDao activityDao;
	
	public void setActivityDao(ActivityDao activityDao){
		this.activityDao = activityDao;
	}
}
