package com.example.testBench.acdt;

import com.example.testBench.R;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

/**
 * 4 attribute values, 5 paths (4,5)
 * @author hanada
 *
 */
public class AcdtDataUri extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intent = getIntent();
		Uri dataUri = intent.getData();
		
		//data
		if(dataUri.getPath().equals("path_candidate"))
			if(dataUri.getHost().equals("host_candidate"))
				if(dataUri.getScheme().equals("scheme_candidate"))
					if(dataUri.getPort() == 1024 )
						System.out.println(dataUri.toString());
		finish();
	}

	//basic acdt obtain and compare statements
	private void test_AcdtBasic_dataUri() {
		
	}

}
