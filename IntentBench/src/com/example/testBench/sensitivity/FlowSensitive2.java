package com.example.testBench.sensitivity;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 2 attribute values, 1 paths (2,1)
 * @author hanada
 *
 */

public class FlowSensitive2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		String str= "str1";
		String res = getIntent().getStringExtra(str);
		System.out.println(res);
		
		str="str2";
		String res2 = getIntent().getStringExtra(str);
		System.out.println(res2);
		finish();
	}
}
