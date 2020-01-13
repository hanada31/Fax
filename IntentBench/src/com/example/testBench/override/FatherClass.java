package com.example.testBench.override;

import com.example.testBench.R;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;

/**
 * 1 attribute values, 1 paths (1,1)
 * @author hanada
 *
 */
public class FatherClass extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		myfun(); 
		finish();
	}
	
	public void myfun(){ 
	    int c = getIntent().getIntExtra("father",0);
	    System.out.println(c);
	}
}
