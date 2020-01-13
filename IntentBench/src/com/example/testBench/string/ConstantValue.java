package com.example.testBench.string;

import com.example.testBench.R;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/**
 * 12 attribute values, 13 paths (10,11)
 * @author hanada
 *
 */
public class ConstantValue extends Activity {
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		testStringCV1(); 
		testStringCV2(); 
	}

	@SuppressLint("DefaultLocale")
	private void testStringCV1() {
		Intent intent = getIntent();
		String action = intent.getAction();

		if(action.equals("action_vr_1"))
			System.out.println();
		
		String pre = "action_vr_";
		if(action.equals(pre +2))
			System.out.println();
		
		if(action.equals(pre.concat("3")))
			System.out.println();
		
		StringBuilder sb = new StringBuilder(pre);
		if(action.equals(sb.append("4")))
			System.out.println();

		String long_candi = "action_vr_555";
		if(action.equals(long_candi.substring(0,11)))
			System.out.println();
	}
	
	private void testStringCV2() {
		Intent intent = getIntent();
		String action = intent.getAction();

		String upper_candi = "ACTION_VR_6";
		if(action.equals(upper_candi.toLowerCase()))
			System.out.println();
		
		String lower_candi = "action_vr_7";
		if(action.equals(lower_candi.toUpperCase()))
			System.out.println();
		
		String trim_candi = "  action_vr_8  ";
		if(action.equals(trim_candi.trim()))
			System.out.println();
		
		Integer num = 9;
		if(action.equals("action_vr_"+num.toString()))
			System.out.println();
		
		if(action.equals(String.valueOf("action_vr_10")))
			System.out.println();
		
		String action_vr_11 ="action_vr_";
		for(int i=0; i<2;i++)
			action_vr_11 += "1";
		if(action.equals(action_vr_11))
			System.out.println();
		
		Context context = getApplicationContext();  
		String action_vr_12 = context.getPackageName();
		if(action.equals(action_vr_12))
			System.out.println();
	}
}
