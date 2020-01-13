package com.example.testBench.string;

import com.example.testBench.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 2 attribute values, 3 paths (2,3)
 * @author hanada
 *
 */
public class ReceiveVar2 extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		String action2 = action.substring(1,5);
		String action3 = action2.substring(0,3);
		char action5 = action.charAt(5);
		if(action3.equals("sub")){
			if(action5 == '5' )
				System.out.println();
			else
				System.out.println();
		}
	}
}
