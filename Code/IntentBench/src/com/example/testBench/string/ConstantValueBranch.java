package com.example.testBench.string;

import java.util.Random;

import com.example.testBench.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 1 attribute values, 1 paths (1,1)
 * @author hanada
 *
 */
public class ConstantValueBranch extends Activity {
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		Random r = new Random();
		String str = "str";
		if (r.nextInt()>100){
			str +="if";
		}else{
			str +="else";
		}
		int a = intent.getIntExtra(str, 0);
		System.out.println(a);
		
		finish();
	}

}
