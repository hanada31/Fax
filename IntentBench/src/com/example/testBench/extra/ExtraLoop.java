package com.example.testBench.extra;

import java.util.Random;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 3 attribute values, 2 paths (3,2)
 * @author hanada
 */
public class ExtraLoop extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		//
		Random random = new Random();
        int x = random.nextInt(20);

        for(int i = 0;i < 9;i++){
            int a = getIntent().getIntExtra("int_a",0);
            System.out.println(a);
        }

        while(x < 10){
            int b = getIntent().getIntExtra("int_b",0);
            System.out.println(b);
        }

        int c = getIntent().getIntExtra("int_c",0);
        System.out.println(c);
		finish();
	}
}
