package com.mycompany.commerce.preprocess.rating;



import java.util.ArrayList;
import java.util.logging.Level;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import com.ibm.commerce.foundation.common.util.logging.LoggingHelper;

public class RatingHandler extends DefaultHandler {

	/*
	 * boolean variables to track entry into and exit out of a particular element.
	 * used to simulate a stack push/pop of elements
	 *
	 */
	private boolean product = false;
	private boolean rating = false;
	private boolean avgRating = false;
	private boolean reviewCount = false;
	
	
	/*
	 * Class name used for trace and logging.
	 */
	private static final String CLASSNAME = RatingHandler.class.getName();
	/*
	 * Logger used for logging.
	 */
	private static final java.util.logging.Logger LOGGER = LoggingHelper.getLogger(RatingHandler.class);
	
	
	/*
	 * container for all the ratings objects created as they are read from the file
	 */
	private ArrayList<ProductRating> pRatings = new ArrayList<ProductRating>();
	
	
	public ArrayList<ProductRating> getpRatings() {
		return pRatings;
	}

	
	private ProductRating aProductRating=null;

	public ProductRating getaProductRating() {
		return aProductRating;
	}

	/*
	 * 
	 * @see org.xml.sax.helpers.DefaultHandler#startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes)
	 */
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) throws SAXException {
		
		if (qName.equalsIgnoreCase(RatingConstants.NODE_ROOT)) {
			product = true;
			 aProductRating= new ProductRating();
			int length = attributes.getLength();
		      //Each attribute
		      for (int i=0; i<length; i++) {
		        // Get names and values to each attribute
		        String name = attributes.getQName(i);
		        if(name.equalsIgnoreCase(RatingConstants.PART_NUMBER)){
		                String value = attributes.getValue(i);
		                aProductRating.setPartNumber(value);
		        }
		        
		      }
		
		}
		
		if(qName.equalsIgnoreCase(RatingConstants.RATING) && product==true){
			rating = true;
			Rating aRating = new Rating();
			int length = attributes.getLength();
		      //Each attribute
		      for (int i=0; i<length; i++) {
		        // Get names and values to each attribute
		        String name = attributes.getQName(i);
		        if(name.equalsIgnoreCase(RatingConstants.RATING_TYPE)){
		                String value = attributes.getValue(i);
		                aRating.setRatingType(value);
		        }
		        
		      }
			
			aProductRating.setRating(aRating);
			
		}
		
		if(qName.equalsIgnoreCase(RatingConstants.AVERAGE_RATING) && rating==true){
		    avgRating = true;
		}
		if(qName.equalsIgnoreCase(RatingConstants.REVIEW_COUNT) && rating==true){
			   reviewCount=true;
		}
		
		
	}

	/*
	 * 
	 * @see org.xml.sax.helpers.DefaultHandler#characters(char[], int, int)
	 */
	public void characters(char ch[], int start, int length)
			throws SAXException {
		if (avgRating) {
			aProductRating.getRating().setAvgRating(new String(ch, start, length));
		}
		if (reviewCount) {
			aProductRating.getRating().setReviewCount(new String(ch, start, length));
		}
	}
	
	/*
	 * 
	 * @see org.xml.sax.helpers.DefaultHandler#endElement(java.lang.String, java.lang.String, java.lang.String)
	 */
	public void endElement(String namespaceURI, String localName, String qName) {
		
		if (qName.equalsIgnoreCase(RatingConstants.NODE_ROOT)) {
			product=false;
			
			if(aProductRating!=null){
				LOGGER.log(Level.FINER, "Constructed : "+aProductRating.toString());
				pRatings.add(aProductRating);
			}else
				LOGGER.log(Level.FINER, "Product rating can not be constructed. Possible null or empty ");
		}
		if (qName.equalsIgnoreCase(RatingConstants.RATING)){
			rating=false;
		}
		if (qName.equalsIgnoreCase(RatingConstants.AVERAGE_RATING)) {
			avgRating=false;
		}
		if (qName.equalsIgnoreCase(RatingConstants.REVIEW_COUNT)) {
			reviewCount=false;
		}
	}

}
