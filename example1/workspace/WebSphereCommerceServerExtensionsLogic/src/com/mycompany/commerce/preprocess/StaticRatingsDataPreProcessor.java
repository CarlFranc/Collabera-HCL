package com.mycompany.commerce.preprocess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;

import com.ibm.commerce.foundation.common.util.logging.LoggingHelper;
import com.ibm.commerce.foundation.dataimport.exception.DataImportApplicationException;
import com.ibm.commerce.foundation.dataimport.preprocess.AbstractDataPreProcessor;
import com.ibm.commerce.foundation.dataimport.preprocess.DataPreProcessor;
import com.ibm.commerce.foundation.dataimport.preprocess.config.DataImportPreProcessConfig.DataProcessingConfig;
import com.mycompany.commerce.preprocess.rating.ProductRating;
import com.mycompany.commerce.preprocess.rating.Rating;
import com.mycompany.commerce.preprocess.rating.RatingXMLReader;
import com.mycompany.commerce.preprocess.rating.XMLReaderException;

public class StaticRatingsDataPreProcessor extends AbstractDataPreProcessor
		implements DataPreProcessor {

	private final static String CLASSNAME = StaticRatingsDataPreProcessor.class
			.getName();

	private final static java.util.logging.Logger LOGGER = LoggingHelper
			.getLogger(StaticRatingsDataPreProcessor.class);

	@Override
	public void process(DataProcessingConfig dataProcessingConfig,
			Connection connection, boolean fullBuild, String localeName,
			boolean bJ2SE) throws SQLException, DataImportApplicationException {
		final String METHODNAME = "process(DataProcessingConfig, Connection, boolean)";
		LOGGER.entering( CLASSNAME, METHODNAME,
				new Object[] { Boolean.toString(fullBuild) });

		String tableName = dataProcessingConfig.getTableName();
		String tableDefinition = dataProcessingConfig.getTableDefinition();
		String filename = (String)dataProcessingConfig.getPropertyMap().get("inputFile");

		createDBTable(connection, tableName, tableDefinition, bJ2SE);

		RatingXMLReader xmlReader = new RatingXMLReader();
		ArrayList<ProductRating> pRatings = null;
		try {
			pRatings = xmlReader.constructProductRatingsFromXML(filename);
		} catch (XMLReaderException e) {

			
			LOGGER.log(Level.SEVERE, e.getMessage());
		}

		String insertSQL = "insert into " + tableName
				+ "(PART_NUMBER, RTYPE, RATING) values (?, ? , ?)";
		try{
		PreparedStatement insertStmt = connection.prepareStatement(insertSQL);
		LOGGER.log(Level.FINER, "Hello");
		
		if(pRatings!=null){
			
			

		for (int i = 0; i < pRatings.size(); i++) {
			ProductRating aProdRating = pRatings.get(i);

			if (aProdRating != null) {
				String partNumber = aProdRating.getPartNumber();

				Rating aRating = aProdRating.getRating();

				if (aRating != null) {
					String avgRating = aRating.getAvgRating();
					String ratingType = aRating.getRatingType();

					if (avgRating != null && ratingType != null
							&& partNumber != null) {

						insertStmt.setString(1, partNumber);
						insertStmt.setString(2, ratingType);
						insertStmt.setString(3, avgRating);

						insertStmt.executeUpdate();
						
						LOGGER.log(Level.FINER,"EXECUTING update >>>>>>>>>>>>>");
					}
				}

			}

		}
		}
		}catch (Exception e){
			LOGGER.log(Level.FINER, e.getMessage());
			
		}
	}

}
