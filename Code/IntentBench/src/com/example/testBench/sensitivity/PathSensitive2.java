package com.example.testBench.sensitivity;

import com.example.testBench.R;
import android.app.Activity;
import android.os.Bundle;
import android.widget.Toast;

/**
 * 2 attribute values, 2 paths (2,2)
 * @author hanada
 *
 */
public class PathSensitive2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		String e10 = getIntent().getStringExtra("e10");
		Toast.makeText(getApplicationContext(), e10, Toast.LENGTH_SHORT);
		
		int i =0;
		while(i<2){
			int e11 = getIntent().getIntExtra("e11", 0); 
			System.out.println(e11);
			i++;
		}
		
		finish();
	}
}
