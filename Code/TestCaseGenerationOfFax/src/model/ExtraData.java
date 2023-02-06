package model;

import java.io.Serializable;

public class ExtraData implements Serializable , Cloneable {
	private static final long serialVersionUID = 4L;
	public Object type;
	public String name;
	public String eaName;
	public String objName;

	public ExtraData(String name) {
		super();
		this.name = name;
	}

	public ExtraData() {
		this.name = "";
		this.eaName = "";
		this.objName = "";
	}

	public ExtraData(Object type2, String name2, String eaName2, String objName2) {
		this.type = type2;
		this.name = name2;
		this.eaName = eaName2;
		this.objName = objName2;
	}

	@Override
	public String toString() {
		String n = "what";
		if (name == null)
			n = "null";
		else
			n = name;
		if (type == null) {
			return "null-" + n + ",";
		} else if (type instanceof String) {
			// if(((String) type).contains("Parcelable"))
			// return type+"@"+objName+"-" +n+",";
			return type + "-" + n + ",";
		} else {
			BundleType bt = (BundleType) type;
			return bt.type + "-" + n + ",(," + bt.toString() + "),";
		}
	}
	
	@Override
	public Object clone() throws CloneNotSupportedException {
		ExtraData ed = new ExtraData(type, name, eaName,objName);
		return ed;
	}
}
