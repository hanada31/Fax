package model;

import soot.Unit;

public class CCTNode {
	public CCTNode previous;
	public CCTNode left;
	public CCTNode right;
	public String clsName;
	public String type;
	public Unit u;
	public Unit gotoUnit;
	
	
	public CCTNode(String clsName, String type, Unit u) {
		this.clsName = clsName;
		this.type = type;
		this.u = u;
	}
	
	@Override
	public String toString() {
		return this.clsName + this.type +this.u.toString();
	}
	@Override
	public int hashCode() {
		return this.toString().length();
	}

	@Override
	public boolean equals(Object obj) {
		return obj.toString().equals(this.toString());
	}
}
