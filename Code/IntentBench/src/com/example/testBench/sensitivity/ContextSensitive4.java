package com.example.testBench.sensitivity;

import com.example.testBench.R;
import com.example.testBench.Utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 2 attribute values, 3 paths (3,4)
 * @author hanada
 *
 */

public class ContextSensitive4 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		

		if(action.equals(Utils.getActionWithBranch(0))){
			System.out.println(action);
		}
		if(action.equals(Utils.getActionWithBranch(1))){
			System.out.println(action);
		}
		finish();
	}
}
