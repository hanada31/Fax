package com.example.testBench.sensitivity;

import java.util.Set;
import com.example.testBench.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.widget.Toast;

/**
 * 12 attribute values, 7 paths (12,7)
 * @author hanada
 *
 */

public class PathSensitive extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		String e0 = getIntent().getStringExtra("e0");
		Toast.makeText(getApplicationContext(), e0, Toast.LENGTH_SHORT);
		
		String action = getIntent().getAction();
		Set<String> categories = getIntent().getCategories();
		if(action==null ||categories==null) return;
		if(action.isEmpty()){
			if(!categories.isEmpty()){
				String e1 = getIntent().getStringExtra("e1");
				Toast.makeText(getApplicationContext(), e1, Toast.LENGTH_SHORT);
			}
		}else if(action.equals("action")){
			if(categories.contains("category")){
				String e2 = getIntent().getStringExtra("e2");
				Toast.makeText(getApplicationContext(), e2, Toast.LENGTH_SHORT);
			}
			if(!categories.contains("category")){
				String e3 = getIntent().getStringExtra("e3");
				System.out.println(e3.toCharArray());
			}
		}else if(action.endsWith("view")){
			int e4 = getIntent().getIntExtra("e4",0);
			System.out.println(e4);
		}else{
			if(getIntent().getData().equals("data")){
				int e5 = getIntent().getIntExtra("e5", 0); 
				Toast.makeText(getApplicationContext(), e5+1, Toast.LENGTH_SHORT);
			}
		}
		
		finish();
	}
}
