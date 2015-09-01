package cuit.math.activity.entity;

import java.sql.Time;

/**
 * Activity entity. @author MyEclipse Persistence Tools
 */

public class Activity implements java.io.Serializable {

	// Fields

	private Integer activityId;
	private String activityTitle;
	private Time activityTime;
	private String activityContent;

	// Constructors

	/** default constructor */
	public Activity() {
	}

	/** full constructor */
	public Activity(String activityTitle, Time activityTime,
			String activityContent) {
		this.activityTitle = activityTitle;
		this.activityTime = activityTime;
		this.activityContent = activityContent;
	}

	// Property accessors

	public Integer getActivityId() {
		return this.activityId;
	}

	public void setActivityId(Integer activityId) {
		this.activityId = activityId;
	}

	public String getActivityTitle() {
		return this.activityTitle;
	}

	public void setActivityTitle(String activityTitle) {
		this.activityTitle = activityTitle;
	}

	public Time getActivityTime() {
		return this.activityTime;
	}

	public void setActivityTime(Time activityTime) {
		this.activityTime = activityTime;
	}

	public String getActivityContent() {
		return this.activityContent;
	}

	public void setActivityContent(String activityContent) {
		this.activityContent = activityContent;
	}

}