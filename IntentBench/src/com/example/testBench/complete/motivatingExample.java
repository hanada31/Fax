package com.example.testBench.complete;

import com.example.testBench.FatherInterface;
import com.example.testBench.Pass;
import com.example.testBench.SonInterface1;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

//useful methods = lifecycle + intent related methods + polymorphism methods

/**
 * 9 attribute values, 6 paths (10,6)
 * @author hanada
 */
public class motivatingExample extends Activity {
	String nullValue;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		Intent intent = getIntent();
		String action = intent.getAction();
		
		this.analyzeIntent(); //same application context
		new Pass().passIntent(intent);  //pass intent 
		new Pass().passReceivedValue(action); //pass received value 
		
		FatherInterface father = new SonInterface1(); //polymorphism
		father.myInterface(intent);
	}
	
	private void analyzeIntent(){
		nullValue = null;
		Intent intent = getIntent();
		String action = intent.getAction();

		String action2 = action.substring(1,4);
		char action3 = action.charAt(2);
		if(action2.equals("act")){
			if (action3 == 'C')
				System.out.println(1);
		}
		else if(action.startsWith(getPrefix("startWith", 3))){
			Bundle b1 = intent.getBundleExtra("b1");
			String s1 = intent.getStringExtra("s1");
			Bundle b2 = b1.getBundle("b2");
			String s3 = b2.getString("s3");
			if(s3!=null)
				System.out.println(s1 + s3 +nullValue.indexOf(1)); 
		}
	}
	
	private String getPrefix(String string, int i) {
		return string.substring(0, i);
	}
}
