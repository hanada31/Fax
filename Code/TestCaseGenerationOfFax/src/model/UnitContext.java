package model;

import soot.SootMethod;
import soot.Unit;

public class UnitContext {
	public SootMethod prepreviousMethod;
	public SootMethod previousMethod;
	public SootMethod currentMethod;
	public Unit prepreviousUnit;
	public Unit previousUnit;
	public Unit currentUnit;
	
	@Override
	public Object clone() throws CloneNotSupportedException{
		UnitContext uc = new UnitContext();
		uc.prepreviousMethod = this.prepreviousMethod;
		uc.previousMethod = this.previousMethod;
		uc.currentMethod = this.currentMethod;
		uc.prepreviousUnit = this.prepreviousUnit;
		uc.previousUnit = this.previousUnit;
		uc.currentUnit = this.currentUnit;
		return uc;
	}
}
