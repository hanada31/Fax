package com.example.testBench.acdt;

import java.util.Set;

import com.example.testBench.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 4 attribute values, 6 paths (4,6)
 * @author hanada
 *
 */
public class AcdtCombine extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		String data = intent.getDataString();
		
		if(action.equals("action1") && data.equals("data1"))
			System.out.println();
		
		if(action.equals("action2") || data.equals("data2"))
			System.out.println();
		
		finish();
	}
}
