package com.example.testBench.string;

import com.example.testBench.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 4 attribute values, 4 paths (4,4)
 * @author hanada
 *
 */
public class ReceiveVar extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		String action2 = action;
		String action3 = action.substring(0,3);
		String action4 = action.substring(0,3);
		char action5 = action.charAt(5);
		
		if(action2.equals("action_ve_1"))
			System.out.println();
		else if(action3.equals("sub"))
			System.out.println();
		else if(action4.equals("sub_wrong"))
			System.out.println();
		else if(action5 == '5' )
			System.out.println();
	}
}
