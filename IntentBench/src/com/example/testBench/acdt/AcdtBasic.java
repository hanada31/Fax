package com.example.testBench.acdt;

import java.util.Set;

import com.example.testBench.ComplexOperation;
import com.example.testBench.R;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/**
 * 4 attribute values, 16 paths (4,16)
 * @author hanada
 *
 */
public class AcdtBasic extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		String action = intent.getAction();
		Set<String> cate = intent.getCategories();
		String type = intent.getType();
		String data = intent.getDataString(); 
		
		//action 
		if(action.equals("action_candidate"))
			System.out.println(action);
		
		//category
		if(cate.contains("category_candidate"))
			System.out.println(action);
		
		//type
		if(type.equals("type_candidate"))
			System.out.println(action);
		
		//data
		if(data.equals("data_candidate"))
			System.out.println(action);
		
//		ComplexOperation.compute();
		finish();
	}
}
