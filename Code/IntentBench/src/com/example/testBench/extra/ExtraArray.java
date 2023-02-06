package com.example.testBench.extra;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 7 attribute values, 1 paths (7,1)
 * @author hanada
 *
 */
public class ExtraArray extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		double[] double_arrs = getIntent().getDoubleArrayExtra("double_arr");
        System.out.println(double_arrs.toString());
        
        float[] float_arrs = getIntent().getFloatArrayExtra("float_arr");
        System.out.println(float_arrs.toString());
        
        int[] int_arrs = getIntent().getIntArrayExtra("int_arr");
        System.out.println(int_arrs.toString());
        
        boolean[] bool_arrs = getIntent().getBooleanArrayExtra("bool_arr");
        System.out.println(bool_arrs.toString());
        
        long[] long_arr = getIntent().getLongArrayExtra("long_arr");
        System.out.println(long_arr.toString());
        
        short[] short_arr = getIntent().getShortArrayExtra("short_arr");
        System.out.println(short_arr.toString());
        
        String[] str_arr = getIntent().getStringArrayExtra("str_arr");
        System.out.println(str_arr.toString());
	        
		finish();
	}
}
