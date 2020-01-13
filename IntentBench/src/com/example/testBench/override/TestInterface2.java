package com.example.testBench.override;

import com.example.testBench.FatherInterface;
import com.example.testBench.R;
import com.example.testBench.SonInterface2;

import android.app.Activity;
import android.os.Bundle;

/**
 * 1 attribute values, 2 paths (1,2)
 * @author hanada
 *
 */
public class TestInterface2 extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		FatherInterface f2 = new SonInterface2();
		f2.myInterface(getIntent()); //1 attribute values, 2 paths
		finish();
	}
}
