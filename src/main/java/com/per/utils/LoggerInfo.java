package com.per.utils;

import java.io.IOException;
import java.util.logging.FileHandler;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

public class LoggerInfo {

	Logger logger = Logger.getLogger("Performance Logger");
	
	private static LoggerInfo instance = new LoggerInfo();
	
	public static final String errorLog = "errorLog.txt";
	public static final String warningLog = "warnLog.txt";
	public static final String fineLog = "fineLog.txt";
	
	private FileHandler logFile = null;
	private FileHandler warningFile = null;
	private FileHandler fineFile = null;
	public LoggerInfo() {

		try {
			logFile = new FileHandler(errorLog, true);
			warningFile = new FileHandler(warningLog, true);
			fineFile = new FileHandler(fineLog, true);
			
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		logFile.setFormatter(new SimpleFormatter());
		warningFile.setFormatter(new SimpleFormatter());
		fineFile.setFormatter(new SimpleFormatter());
		
		logger.setLevel(Level.ALL);
		fineFile.setLevel(Level.FINE);
		warningFile.setLevel(Level.WARNING);
		
		logger.addHandler(logFile);
		logger.addHandler(warningFile);
		logger.addHandler(fineFile);
	}
	
	public static LoggerInfo getLogger(){
		return instance;
	}
	public void log(String msg){
		
		logger.finest(msg);
		logger.finer(msg);
		logger.fine(msg);
		logger.config(msg);
		logger.info(msg);
		logger.warning(msg);
		logger.severe(msg);
		
	}
	
	public void fine(String msg){
		logger.fine(msg);
	}
	
	public void warning(String msg){
		logger.warning(msg);
	}

	
}


