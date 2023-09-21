package com.mycompany.commerce.preprocess.rating;

import com.ibm.commerce.foundation.common.util.logging.LoggingHelper;



public class ProductRating {
	
	/*
	 * part number of the product
	 */
	private String partNumber;
	
	/*
	 * Rating of this product
	 */
	private Rating rating = new Rating();
	
	/*
	 * Class name used for trace and logging.
	 */
	private static final String CLASSNAME = ProductRating.class.getName();
	/*
	 * Logger used for logging.
	 */
	private static final java.util.logging.Logger LOGGER = LoggingHelper.getLogger(ProductRating.class);

	public String getPartNumber() {
		final String METHODNAME ="getPartNumber";
			if (LoggingHelper.isEntryExitTraceEnabled(LOGGER)) {
				LOGGER.entering(CLASSNAME, METHODNAME);
			}
		return partNumber;
	}

	public void setPartNumber(String partNumber) {
		final String METHODNAME ="setPartNumber";
			if (LoggingHelper.isEntryExitTraceEnabled(LOGGER)) {
				LOGGER.entering(CLASSNAME, METHODNAME);
			}
		this.partNumber = partNumber;
	}

	public Rating getRating() {
		final String METHODNAME ="getRating";
			if (LoggingHelper.isEntryExitTraceEnabled(LOGGER)) {
				LOGGER.entering(CLASSNAME, METHODNAME);
			}
		return rating;
	}

	public void setRating(Rating rating) {
		final String METHODNAME ="getRating";
		if (LoggingHelper.isEntryExitTraceEnabled(LOGGER)) {
			LOGGER.entering(CLASSNAME, METHODNAME);
		}
		this.rating = rating;
	}
	
	public String toString(){
		
		return partNumber+"  : "+rating.toString();
	}

}

