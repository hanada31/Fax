package com.example.testBench.sensitivity;

import java.util.Random;

import com.example.testBench.Instance;
import com.example.testBench.R;
import com.example.testBench.Utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 2 attribute values, 3 paths (3,4)
 * @author hanada
 *
 */
public class FieldSensitive extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		Instance i = new Instance();
		Random r = new Random();
		if(r.nextBoolean())
			i.field1 = "field1_t";
		else
			i.field1 = "field1_f";
		if(action.equals(Utils.handleField1(i))){
			System.out.println(action);
		}
		
		i.field1 = "field1_wrong";
		
		finish();
	}
}
