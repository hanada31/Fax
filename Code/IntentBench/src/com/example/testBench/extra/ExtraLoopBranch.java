package com.example.testBench.extra;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 4 attribute values, 1 paths (2,1)
 * @author hanada
 *
 */
public class ExtraLoopBranch extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		for(int i= 0;i < 5;i++){
            if(i < 2){
                int a = getIntent().getIntExtra("int_a",0);
                System.out.println(a); 
            }
            else if(i < 4){
                int b = getIntent().getIntExtra("int_b",0);
                System.out.println(b);
            }
            else {
                int c = getIntent().getIntExtra("int_c", 0);
                System.out.println(c);
            }
        }
        int d = getIntent().getIntExtra("int_d",0);
        System.out.println(d);
		finish();
	}
}
