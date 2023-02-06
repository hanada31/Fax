package com.example.testBench;

import android.content.Intent;

public class SonInterface2 implements FatherInterface{

	@Override
	public void myInterface(Intent intent) {
		String action = intent.getAction();
		if(action.equals("SonInterface2"))
			System.out.println(action);
	}

}
