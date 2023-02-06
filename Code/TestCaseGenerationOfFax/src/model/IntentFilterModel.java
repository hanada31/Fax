package model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

public class IntentFilterModel implements Serializable {
	private static final long serialVersionUID = 6L;

	public String priority = "0";
	public ArrayList<String> action_list = new ArrayList<String>();
	public ArrayList<String> category_list = new ArrayList<String>();
	public Set<String> scheme = new HashSet<String>();
	public Set<String> host = new HashSet<String>();
	public Set<String> port = new HashSet<String>();
	public Set<String> path = new HashSet<String>();
	public ArrayList<String> mime_type_list = new ArrayList<String>();
	

	@Override
	public String toString() {
		String res = "actionlist:" +action_list+", ";
		res += "category_list:" +category_list+", ";
		res += "data:" +scheme +","+ host +","+ port +","+ path+"\n";
		return res;
	}
}
