package com.mycompany.commerce.preprocess.rating;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.w3c.dom.Node;
import org.xml.sax.SAXException;

import com.ibm.commerce.foundation.common.util.logging.LoggingHelper;

/*
 *-----------------------------------------------------------------
 * IBM Confidential
 *
 * OCO Source Materials
 *
 * WebSphere Commerce
 *
 * (C) Copyright IBM Corp. 2008, 2009
 *
 * The source code for this program is not published or otherwise
 * divested of its trade secrets, irrespective of what has
 * been deposited with the U.S. Copyright Office.
 *-----------------------------------------------------------------
 */

public class RatingXMLReader {

	/*
	 * Class name used for trace and logging.
	 */
	private static final String CLASSNAME = RatingXMLReader.class.getName();
	/*
	 * Logger used for logging.
	 */
	private static final java.util.logging.Logger LOGGER = LoggingHelper
			.getLogger(RatingXMLReader.class);
	/*
	 * DOM object
	 */
	private Node node = null;

	/*
	 * This method will read the XML file, construct ProductRating objects and
	 * return them as a list
	 */

	public ArrayList<ProductRating> constructProductRatingsFromXML(String xmlFileLocation)
			throws XMLReaderException {
		final String METHODNAME = "readXML";

		if (LoggingHelper.isEntryExitTraceEnabled(LOGGER)) {
			LOGGER.entering(CLASSNAME, METHODNAME, xmlFileLocation);
		}

		if (xmlFileLocation == null || xmlFileLocation.length() == 0) {

			throw new XMLReaderException("Invalid XML File");

		}
		SAXParserFactory factory = SAXParserFactory.newInstance();

		RatingHandler handler = new RatingHandler();

		// Parse the xml file.
		try {
			SAXParser saxParser = factory.newSAXParser();

			saxParser.parse(xmlFileLocation, handler);

		} catch (ParserConfigurationException e) {
			LOGGER.log(Level.FINER, e.getMessage());
			throw new XMLReaderException(e.getMessage());
		} catch (SAXException e) {
			LOGGER.log(Level.FINER, e.getMessage());
			throw new XMLReaderException(e.getMessage());
		} catch (IOException e) {
			LOGGER.log(Level.FINER, e.getMessage());
			throw new XMLReaderException(e.getMessage());
		}

		return handler.getpRatings();

	}

}
