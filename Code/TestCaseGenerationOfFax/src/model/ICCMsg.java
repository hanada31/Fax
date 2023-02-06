package model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import utils.PrintUtils;

public class ICCMsg implements Cloneable, Serializable {
	private static final long serialVersionUID = 5L;
	public String action;
	public Set<String> category = new HashSet<String>();
	public String data;
	public String scheme;
	public String host;
	public String path;
	public String port;
	public String type;
	public Set<String> extra = new HashSet<String>();
//	public BundleType extraBT = new BundleType();
	public List<Attribute> attributeList;
	public String modelString;
	
	public ICCMsg(String model) {
		modelString = model;
	}

	public ICCMsg(String action2, Set<String> category2, String data2,
			String scheme2, String host2, String path2, String port2,
			String type2, Set<String> extra2, List<Attribute> attributeList2,
			String modelString2) {
		action = action2;
		category = category2;
		data = data2;
		scheme = scheme2;
		host = host2;
		path = path2;
		port = port2;
		type = type2;
		extra = new HashSet<String>(extra2);
//		try {
//			extraBT = extraBT2.clone();
//		} catch (CloneNotSupportedException e) {
//			e.printStackTrace();
//		}
		attributeList = attributeList2;
		modelString = modelString2;
	}

	@Override
	public String toString() {
		String res = "";
		if(action!= null && !action.equals("\"\""))
			res += "## action:"+action;
		if(category!=null && category.size()>0)
			if(!PrintUtils.printSet(category).equals(""))
				res += "## category:"+PrintUtils.printSet(category);
		if(data!= null && !data.equals("\"\""))
			res += "## data:"+data;
		if(scheme!= null && !scheme.equals("\"\""))
			res += "## scheme:"+scheme;
		if(host!= null && !host.equals("\"\""))
			res += "## host:"+host;
		if(path!= null && !path.equals("\"\""))
			res += "## path:"+path;
		if(port!= null && !port.equals("\"\""))
			res += "## port:"+port;
		if(type!= null && !type.equals("\"\""))
			res += "## type:"+type;
		if(extra!=null &&extra.size()>0)
			if(!PrintUtils.printSet(extra).equals(""))
				res += "## extra:"+PrintUtils.printSet(extra);
		if(res.equals("")) return res;
//		res += "\n## modelString:"+modelString;
//		res+= "\n"+Utils.printList(attributeList);
		return res+"\n";
	}

	public List<Attribute> getAttList() {
		return attributeList;
	}
	

	@Override
	public int hashCode() {
		return this.toString().length();
	}

	@Override
	public boolean equals(Object obj) {
		return obj.toString().equals(this.toString());
	}
	
	@Override
	public ICCMsg clone() throws CloneNotSupportedException {
		ICCMsg icc = new ICCMsg(action, category, data, scheme, host, path, port,type ,extra, attributeList, modelString);
		return icc;
	}
}
