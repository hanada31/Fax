package com.example.testBench.override;

import com.example.testBench.FatherInterface;
import com.example.testBench.R;
import com.example.testBench.SonInterface1;

import android.app.Activity;
import android.os.Bundle;

/**
 * 1 attribute values, 2 paths (1,2)
 * @author hanada
 *
 */
public class TestInterface1 extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		FatherInterface f1 = new SonInterface1();
		f1.myInterface(getIntent()); 
		finish();
	}

}
