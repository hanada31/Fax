package com.example.testBench;

import java.util.Random;

public class ComplexOperation {
	
	public static void compute(){
		Random r = new Random();
		int x = r.nextInt(100);
		for(int i=0; i<100; i++){
			if (i<x){
				System.out.println(i);
			}else{
				System.out.println(x);
			}
		}
		compute1();
	}
	
	public static void compute1(){
		Random r = new Random();
		int x = r.nextInt(100);
		for(int i=0; i<100; i++){
			if (i<x){
				System.out.println(i);
			}else{
				System.out.println(x);
			}
		}
//		compute();
	}
}
