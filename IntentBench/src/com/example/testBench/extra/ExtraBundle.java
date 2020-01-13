package com.example.testBench.extra;

import com.example.testBench.R;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;

/**
 * 4 attribute values, 1 paths (4,1)
 * @author hanada
 *
 */
public class ExtraBundle extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Bundle bundle_l1 = getIntent().getBundleExtra("bundle_l1");
		String str_l1 = getIntent().getStringExtra("str_l1");
		Bundle bundle_l2 = bundle_l1.getBundle("bundle_l2");
		String str_l3 = bundle_l2.getString("str");
		System.out.println(str_l3); 
		finish();
	}

}
