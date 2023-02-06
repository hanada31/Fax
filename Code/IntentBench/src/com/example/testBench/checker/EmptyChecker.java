package com.example.testBench.checker;

import com.example.testBench.R;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 3 attribute values, 2 paths (3,2)
 * @author hanada
 *
 */
public class EmptyChecker extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		if(action.isEmpty()) {
			int a = intent.getIntExtra("int_empty", 0);
			System.out.println(a);
		}else{
			int a = intent.getIntExtra("int_not_empty", 0);
			System.out.println(a);
		}
		finish();
	}
}
