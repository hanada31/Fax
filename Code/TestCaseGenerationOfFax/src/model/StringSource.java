package model;

import java.io.Serializable;

public class StringSource implements Serializable {
	private static final long serialVersionUID = 9L;
	public int currentMethod = 0; // level2
	public int invokeMethod = 0; // level2

	public int directSring = 0; // level3 constant or static final
	public int staticNonFinal = 0;// level3 find the init value
	public int newStringBuilder = 0;// level3 find the init value
	public int newString = 0;// level3 find the init value
	public int sysAPI = 0; // level3 can not handle
	public int newArrayExpr = 0; // level3 can not handle
	public int parameter = 0; // level3 can not handle

	@Override
	public String toString() {
		String s = "";
		s += "invokeMethod = " + invokeMethod + "\n";

		s += "directSring = " + directSring + "\n";
		s += "staticNonFinal = " + staticNonFinal + "\n";
		s += "parameter = " + parameter + "\n";
		s += "sysAPI = " + sysAPI + "\n\n";

		s += "newStringBuilder = " + newStringBuilder + "\n";
		s += "newString = " + newString + "\n";
		s += "newArrayExpr = " + newArrayExpr + "\n\n";
		return s;
	}
}
