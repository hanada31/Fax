package com.example.testBench.sensitivity;

import com.example.testBench.R;
import com.example.testBench.Utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 7 attribute values, 4 paths (7,4)
 * @author hanada
 *
 */
public class ContextSensitive extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		Utils.getIntentParas(intent, getApplicationContext());
		
		Utils.getIntentParasWithBranch(intent, getApplicationContext());
		finish();
	}
}
