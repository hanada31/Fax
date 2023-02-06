package model;

import java.io.Serializable;

import com.microsoft.z3.Model;

public class Attribute implements Cloneable, Serializable {
	private static final long serialVersionUID = 3L;
	public String id;
	public String type;
	public String value;
	public String condition;
	public String conditionOfLeft;
	public int isSatisfy = 1;
	public Model model = null;

	public Attribute(String id, String type, String value, String condition, String conditionOfLeft) {
		this.id = id;
		this.type = type;
		this.value = value;
		this.condition = condition;
		this.conditionOfLeft = conditionOfLeft;
	}

	public Attribute(String id, String type, String value, String condition, int isSatisfy, String conditionOfLeft) {
		this.id = id;
		this.type = type;
		this.value = value;
		this.condition = condition;
		this.isSatisfy = isSatisfy;
		this.conditionOfLeft = conditionOfLeft;
	}

	@Override
	public String toString() {
		return "type: " + type + ", value: " + value + ", condition: " + condition + ", isSatisfy: " + isSatisfy + ", conditionOfLeft: " + conditionOfLeft+ "\n";
	}

	@Override
	public Object clone() throws CloneNotSupportedException {
		Attribute attr2 = new Attribute(id, type, value, condition, isSatisfy, conditionOfLeft);
		return attr2;
	}


}
