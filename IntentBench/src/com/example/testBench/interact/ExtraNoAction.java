package com.example.testBench.interact;

import com.example.testBench.R;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;

/**
 * 2 attribute values, 1 paths (2,1)
 * @author hanada
 *
 */
public class ExtraNoAction extends Activity {

	@SuppressLint("NewApi")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		int e1 = getIntent().getIntExtra("extra1", 0);
		int e2 = getIntent().getIntExtra("extra2", 0); 
		System.out.println(e1 +e2);
		finish();
	}
}
