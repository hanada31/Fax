package utils;

public class StringUtils {
	
	public static String refineString(String old) {
		String newStr = old.replace("\\", "").replace("\"", "");
			return newStr;
	}
}
