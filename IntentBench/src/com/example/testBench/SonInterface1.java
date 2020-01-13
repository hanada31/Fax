package com.example.testBench;

import android.content.Intent;

public class SonInterface1 implements FatherInterface{
	private String nullValue;

	@Override
	public void myInterface(Intent intent) {
		nullValue = null;
		String data = intent.getDataString();
		if(data.equals("d1"))
			System.out.println(nullValue.length());  
	}
}


 
