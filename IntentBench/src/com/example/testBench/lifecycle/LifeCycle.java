package com.example.testBench.lifecycle;

import com.example.testBench.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 6  attribute values, 4 paths  (6,4)
 * @author hanada
 *
 */
public class LifeCycle extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);   
		
		Intent intent = getIntent();
		String action = intent.getAction();
		if(action.equals("onCreate_action"))
			System.out.println(action);
			
		double dd = intent.getDoubleExtra("onCreate_dd", 0.0);
		System.out.println(dd);
	}

	@Override
	protected void onStart() {
		super.onStart();
		
		Intent intent = getIntent();
		String action = intent.getAction();
		if(action.equals("onStart_action"))
			System.out.println(action);
			
		double dd = intent.getDoubleExtra("onStart_dd", 0.0);
		System.out.println(dd);
	}
	

	@Override
	protected void onDestroy() {
		super.onDestroy();
		Intent intent = getIntent();
		String action = intent.getAction();
		if(action.equals("onDestroy_action"))
			System.out.println(action);
			
		double dd = intent.getDoubleExtra("onDestroy_dd", 0.0);
		System.out.println(dd);
	}

}
