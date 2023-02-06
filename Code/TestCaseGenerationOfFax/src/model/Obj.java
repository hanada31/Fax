package model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class Obj {
	String name = "";
	Map<String, Obj> objs = new HashMap<String, Obj>();
	List<String> values = new ArrayList<String>();

	public Obj(String name) {
		this.name = name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setValues(List<String> values) {
		if (values == null)
			return;
		for (String s : values) {
			s = s.replaceAll("\"", "");
			this.values.add(s);
		}
	}

	public void addValue(String s) {
		s = s.replaceAll("\"", "");
		this.values.add(s);
	}

	public Map<String, Obj> getObjs() {
		return objs;
	}

	public List<String> getValues() {
		return values;
	}

	public void addObj(Obj o) {
		objs.put(o.name, o);

	}

	public Obj getObj(String s) {
		return objs.get(s);

	}

	@Override
	public String toString() {
		String res = "objs: ";
		for (Entry<String, Obj> en : objs.entrySet())
			res += "(" + en.getKey() + " - " + en.getValue() + "), ";

		res += "\nvals: ";
		for (String s : values)
			res += s + ", ";

		return res;
	}

}
