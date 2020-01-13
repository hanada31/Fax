package com.example.testBench.extra;

import java.util.ArrayList;

import com.example.testBench.R;

import android.app.Activity;
import android.os.Bundle;

/**
 * 7 attribute values, 1 paths (7,1)
 * @author hanada
 *
 */
public class ExtraArray2 extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		byte[] bt_arr = getIntent().getByteArrayExtra("bt_arr");
        System.out.println(bt_arr.toString());
        
        char[] ch_arr = getIntent().getCharArrayExtra("ch_arr");
        System.out.println(ch_arr.toString());
        
        CharSequence charSequence = getIntent().getCharSequenceExtra("charseq");
        System.out.println(charSequence.toString());
        
        CharSequence[] charSequences = getIntent().getCharSequenceArrayExtra("charseq_arr");
        System.out.println(charSequences.toString());
        
        ArrayList<CharSequence> charseq_arr_list = getIntent().getCharSequenceArrayListExtra("charseq_arr_list");
        System.out.println(charseq_arr_list.toString());
        
        ArrayList<Integer> intArrlist = getIntent().getIntegerArrayListExtra("int_arrlist");
        System.out.println(intArrlist.toString());
        
        ArrayList<String> strArrlist = getIntent().getStringArrayListExtra("str_arrlist");
        System.out.println(strArrlist.toString());
		finish();
	}
	
}
