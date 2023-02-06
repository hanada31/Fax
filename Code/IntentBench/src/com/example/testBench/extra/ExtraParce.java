package com.example.testBench.extra;

import java.util.ArrayList;

import com.example.testBench.MySerializable;
import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;
import android.os.Parcelable;

/**
 * 4 attribute values, 1 paths (4,1)
 * @author hanada
 *
 */
public class ExtraParce extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		MySerializable se = (MySerializable) getIntent().getSerializableExtra("ser");
		System.out.println(se.toString()); 
		
        Parcelable parcelable = getIntent().getParcelableExtra("parce");
        System.out.println(parcelable.toString()); 
        
        Parcelable[] parcelables = getIntent().getParcelableArrayExtra("parce_arr");
        System.out.println(parcelables.toString()); 
        
        ArrayList<Parcelable> parce_arr_list = getIntent().getParcelableArrayListExtra("parce_arr_list");
        System.out.println(parce_arr_list.toString()); 
        
		finish();
	}
}
