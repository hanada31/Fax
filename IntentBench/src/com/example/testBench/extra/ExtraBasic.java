package com.example.testBench.extra;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 5 attribute values, 1 paths (5,1)
 * @author hanada
 *
 */
public class ExtraBasic extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
	    int a = getIntent().getIntExtra("int_a",0);
        double b = getIntent().getDoubleExtra("double_b",12.34);
        float c = getIntent().getFloatExtra("float_c",10);
        long d = getIntent().getLongExtra("long_d",20);
        short e = getIntent().getShortExtra("short_e", (short) 10);
        System.out.println(a+b+c+d+e);
		finish();
	}
}
