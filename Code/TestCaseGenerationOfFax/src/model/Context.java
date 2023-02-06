package model;

import java.util.ArrayList;
import java.util.List;

public class Context {
	List<Obj> objs = new ArrayList<Obj>();

	public List<Obj> getObjs() {
		return objs;
	}

	public void addObj(Obj o) {
		objs.add(o);
	}
}
