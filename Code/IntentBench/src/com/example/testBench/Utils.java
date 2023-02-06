package com.example.testBench;

import android.content.Context;
import android.content.Intent;

public class Utils {
	public static String getAction(Intent intent){
		return intent.getAction();
	}
	public static  void getIntentParas(Intent intent, Context ctxt) {
//        if(intent == null) {
//            return;
//        }
		String action = intent.getAction();
		if(action.equals("a0"))
			System.out.println(action);
			
		double dd = intent.getDoubleExtra("d0", 0.0);
		System.out.println(dd);
	}
	
	public static void getIntentParasWithBranch(Intent intent,
			Context applicationContext) {
		String action = intent.getAction();
		if(action.equals("if_a1")){
			double dd = intent.getDoubleExtra("if_d1", 0.0);
			System.out.println(dd);
		}else if(action.equals("if_a2")){
			double dd = intent.getDoubleExtra("if_d2", 0.0);
			System.out.println(dd);
		}else{
			double dd = intent.getDoubleExtra("if_d3", 0.0);
			System.out.println(dd);
		}
	}
	
	public static String getActionWithoutPara() {
		String a = "get";
		String b = "ActionWithoutPara";
		return a+b;
	}
	
	public static String getActionWithPara(String str) {
		String a = "get";
		return a+str;
	}
	public static String getActionWithBranch(int i) { 
		String a = "get";
		String b = "ActionWithBranch";
		if(i==0){
			return a+b;
		}else{
			return a+b+i;
		}
	}
	
	public static String passGetActionWithBranch(int i) { 
		return getActionWithBranch(i);
	}
	
	public static void handleAction(String action) {
		if(action.equals("handleAction"))
			System.out.println(action);
	}
	public static String handleField2(Instance i) {
		return i.field2;
	}
	public static String handleField1(Instance i) {
		return i.field1;
	}
	
	public static String handleField3(Instance i) {
		return i.getField3();
	}
	
}
