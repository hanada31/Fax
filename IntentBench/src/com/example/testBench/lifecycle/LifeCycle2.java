package com.example.testBench.lifecycle;

import com.example.testBench.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 4  attribute values, 1 paths  (4,1)
 * @author hanada
 *
 */
public class LifeCycle2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);  
		
		Intent intent = getIntent();
		double dd = intent.getDoubleExtra("onCreate_dd", 0.0);
		System.out.println(dd);
	}

	@Override
	protected void onStart() {
		super.onStart();
		
		Intent intent = getIntent();
		double dd = intent.getDoubleExtra("onStart_dd", 0.0);
		System.out.println(dd);
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		Intent intent = getIntent();
		double dd = intent.getDoubleExtra("onResume_dd", 0.0);
		System.out.println(dd);
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		
		Intent intent = getIntent();
		double dd = intent.getDoubleExtra("onDestroy_dd", 0.0);
		System.out.println(dd);
	}

}
