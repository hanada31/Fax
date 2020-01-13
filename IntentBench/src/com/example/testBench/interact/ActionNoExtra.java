package com.example.testBench.interact;

import java.util.Set;

import com.example.testBench.R;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;

/**
 * 3 attribute values, 4 paths (3,4)
 * @author hanada
 *
 */
public class ActionNoExtra extends Activity {

	@SuppressLint("NewApi")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		String action = getIntent().getAction();
		Set<String> categories = getIntent().getCategories();
		if(action.endsWith("action1")){
			if(categories.contains("category1")){
				System.out.println(1);
			}
		}
		else if(action.endsWith("action2")){
			if(categories.contains("category2")){}
		}
		finish();
	}
}
