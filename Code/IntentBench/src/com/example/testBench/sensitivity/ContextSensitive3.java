package com.example.testBench.sensitivity;

import com.example.testBench.R;
import com.example.testBench.Utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 1 attribute values, 2 paths (1,2)
 * @author hanada
 *
 */

public class ContextSensitive3 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		Utils.handleAction(action);
		finish();
	}
}
