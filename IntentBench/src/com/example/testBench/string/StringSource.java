package com.example.testBench.string;

import com.example.testBench.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 2 attribute values, 3 paths (2,3)
 * @author hanada
 *
 */
public class StringSource extends Activity {
	static String staStr ="action_so_1";
	static final String staFinalStr = "action_so_2";
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		
		//static non-final
		if(action.equals(staStr))
			System.out.println();
		
		//static final
		if(action.equals(staFinalStr))
			System.out.println();
	}
}
