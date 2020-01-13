package com.example.testBench.sensitivity;

import com.example.testBench.R;
import com.example.testBench.Utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 5 attribute values, 6 paths (6,7)
 * @author hanada
 *
 */
public class ContextSensitive2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		
		if(action.equals(Utils.getActionWithPara("ActionWithPara"))){
			System.out.println(action);
		}
		
		if(action.equals(Utils.getActionWithoutPara())){
			System.out.println(action);
		}
		
		if(action.equals(Utils.getActionWithBranch(0))){
			System.out.println(action);
		}
		if(action.equals(Utils.getActionWithBranch(1))){
			System.out.println(action);
		}
		if(action.equals(Utils.passGetActionWithBranch(2))){
			System.out.println(action);
		}
		finish();
	}
}
