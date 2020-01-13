package com.example.testBench.sensitivity;

import com.example.testBench.Instance;
import com.example.testBench.R;
import com.example.testBench.Utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
/**
 * 1 attribute values, 2 paths (0,1)
 * @author hanada
 *
 */
public class FieldSensitive2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		Instance i = new Instance();
		i.setField2("field2");
		
		if(action.equals(Utils.handleField2(i))){
			System.out.println(i.getField2());
		}
		System.out.println(123);
		finish();
	}
}
