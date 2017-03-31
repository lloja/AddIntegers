package com.addints;


import java.text.*;
import java.util.Calendar;
import java.util.Date;

public class AddIntegers {

	public Date getCurrentDate(){
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		//get current date time with Calendar()
		Calendar cal = Calendar.getInstance();
		System.out.println(dateFormat.format(cal.getTime()));
		// Get results from outputObject
		Date date = new Date();
		try{
			date = dateFormat.parse(dateFormat.format(cal.getTime()));
		}catch(java.text.ParseException pe){
			pe.printStackTrace();
		}
		return date;
	}

	public String addTwoIntegers(String num1, String num2){
		Integer result = new Integer(num1) + new Integer(num2);
		return result.toString();
	}

}
