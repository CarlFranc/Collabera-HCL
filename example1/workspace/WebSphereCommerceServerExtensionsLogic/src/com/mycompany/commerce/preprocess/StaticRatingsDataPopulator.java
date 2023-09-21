package com.mycompany.commerce.preprocess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;

import com.ibm.commerce.foundation.common.util.logging.LoggingHelper;
import com.ibm.commerce.foundation.dataimport.exception.DataImportApplicationException;
import com.ibm.commerce.foundation.dataimport.preprocess.AbstractDataPreProcessor;
import com.ibm.commerce.foundation.dataimport.preprocess.DataPreProcessor;
import com.ibm.commerce.foundation.dataimport.preprocess.config.DataImportPreProcessConfig.DataProcessingConfig;

public class StaticRatingsDataPopulator extends AbstractDataPreProcessor
		implements DataPreProcessor {

	private final static String CLASSNAME = StaticRatingsDataPopulator.class
			.getName();

	private final static java.util.logging.Logger LOGGER = LoggingHelper
			.getLogger(StaticRatingsDataPopulator.class);

	@Override
	public void process(DataProcessingConfig dataProcessingConfig,
			Connection connection, boolean fullBuild, String localeName,
			boolean bJ2SE) throws SQLException, DataImportApplicationException {
		
		LOGGER.log(Level.INFO,"EXECUTING TI_RATING insert");

		final String METHODNAME = "process(DataProcessingConfig, Connection, boolean)";
		LOGGER.entering(CLASSNAME, METHODNAME, new Object[] { Boolean
				.toString(fullBuild) });

		String tableName = dataProcessingConfig.getTableName();
		String tableDefinition = dataProcessingConfig.getTableDefinition();

		createDBTable(connection, tableName, tableDefinition, bJ2SE);

		String insertSQL = dataProcessingConfig.getSQL().trim();
		  
				
		try {
			PreparedStatement insertStmt = connection
					.prepareStatement(insertSQL);
			LOGGER.log(Level.INFO,"EXECUTING TI_RATING insert");
			insertStmt.executeUpdate();
			
			LOGGER.log(Level.FINER,"EXECUTED "+  insertSQL);

		} catch (Exception e) {

		}

	}

}
