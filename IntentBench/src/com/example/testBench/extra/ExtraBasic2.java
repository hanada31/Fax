package com.example.testBench.extra;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 5 attribute values, 1 paths (5,1)
 * @author hanada
 *
 */
public class ExtraBasic2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		boolean f = getIntent().getBooleanExtra("bool_f",true);
        System.out.println(f);

        String str = getIntent().getStringExtra("str");
        byte bt= getIntent().getByteExtra("bt", (byte) 1);
        char ch = getIntent().getCharExtra("char",'a');
        System.out.println(str + bt + ch);
        
        int exa = getIntent().getExtras().getInt("int_a");
        System.out.println(exa);
		finish();
	}
}
