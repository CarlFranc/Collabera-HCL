package com.mycompany.commerce.preprocess.rating;

public class Rating {
	
	/*
	 * type of rating
	 */
	private String ratingType;
	
	/*
	 * average of customer ratings
	 */
	private String avgRating;
	
	/*
	 * number of reviews received 
	 */
	private String reviewCount;

	public String getRatingType() {
		return ratingType;
	}

	public void setRatingType(String ratingType) {
		this.ratingType = ratingType;
	}

	public String getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(String avgRating) {
		this.avgRating = avgRating;
	}

	public String getReviewCount() {
		return reviewCount;
	}

	public void setReviewCount(String reviewCount) {
		this.reviewCount = reviewCount;
	}

public String toString(){
		
		return ratingType+", "+avgRating+ ", "+reviewCount;
	}
}