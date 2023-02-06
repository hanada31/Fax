package utils;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

public class PrintUtils {
	
	public static String printArray1(String[] ss) {
		String res="";
		for(String s: ss)
			res +=s+", ";
		return res;
	}
	
	public synchronized static void printInfo(Object ob) {
		String s = ob.toString();
		String path = "result/";
		File pathf = new File(path);
		if (!pathf.exists())
			pathf.mkdirs();
		IOUtils.write_to_file("result/temp_output.txt", s + "\n", true);
	}


	public static String printSet(Set set) {
		String res = "";
		Iterator it1 = set.iterator();
		while (it1.hasNext()) {
			res += it1.next().toString() + ", ";
		}
		if (res.endsWith(", "))
			res = res.substring(0, res.length() - 2);
		return res;
	}

	public static String printList(List list) {
		String res = "";
		for (Object o : list) {
			res += o.toString() + ", ";
		}
		return res;
	}

	public static String printMap(Map<?, ?> map) {
		String res = "";
		for (Entry en : map.entrySet()) {
			res += "(" + en.getKey() + ", " + en.getValue() + ")" + "\n";
		}
		return res;
	}

	public static String printArray(String[] ss) {
		String res = "";
		for (String s : ss)
			res += s + ", ";
		return res;
	}
}
