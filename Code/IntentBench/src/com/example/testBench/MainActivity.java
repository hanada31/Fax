package com.example.testBench;

import com.example.testBench.R;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity
{
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        finish();
    }
	@Override
    protected void onStart() {
    	super.onStart();
    	TextView tv = findViewById(R.id.tv);
    	tv.setText("hhhhhhhhhhhhhhhhh");
    }
}
