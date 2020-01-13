package com.example.testBench.string;

import com.example.testBench.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 1 attribute values, 2 paths (1,2)
 * @author hanada
 *
 */
public class ReceiveVar3 extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		String action2 = action.concat("_concat");
		if(action2.startsWith("rv")){
			System.out.println();
		}
	}
}
