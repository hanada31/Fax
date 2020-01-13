package com.example.testBench.string;

import com.example.testBench.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 7 attribute values, 8 paths (7,8)
 * @author hanada
 *
 */
public class CompareOp extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();

		if(action.isEmpty())
			System.out.println();
		
		if(action != null)
			System.out.println();
		
		if(action.equals("action_cr_1"))
			System.out.println();
		
		if(action.equalsIgnoreCase("ACTION_cr_2"))
			System.out.println();
		
		if(action.contentEquals("action_cr_3"))
			System.out.println();
		
		if(action.startsWith("action_cr_4"))
			System.out.println();
		
		if(action.endsWith("action_cr_5"))
			System.out.println();
		
		if(action.contains("action_cr_6"))
			System.out.println();
	}
}
