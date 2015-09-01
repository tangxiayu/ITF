package cuit.math.news.entity;

import java.util.Date;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields

	private Integer newsId;
	private String newsTitle;
	private Date newsTime;
	private String newsContent;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** full constructor */
	public News(String newsTitle, Date newsTime, String newsContent) {
		this.newsTitle = newsTitle;
		this.newsTime = newsTime;
		this.newsContent = newsContent;
	}

	// Property accessors

	public Integer getNewsId() {
		return this.newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return this.newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public Date getNewsTime() {
		return this.newsTime;
	}

	public void setNewsTime(Date newsTime) {
		this.newsTime = newsTime;
	}

	public String getNewsContent() {
		return this.newsContent;
	}

	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}

}