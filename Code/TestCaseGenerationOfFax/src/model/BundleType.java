package model;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class BundleType implements Serializable, Cloneable {
	private static final long serialVersionUID = 4L;
	public Map<String, List<ExtraData>> bundle;
	public Set<String> contentSet;
	public String type;

	public BundleType() {
		bundle = new HashMap<String, List<ExtraData>>();
		contentSet = new HashSet<String>();
		type = "";
	}

	public BundleType(Map<String, List<ExtraData>> bundle2,
			Set<String> contentSet2, String type2) {
		bundle = new HashMap<String, List<ExtraData>>(bundle2);
		contentSet = new HashSet<String>(contentSet2);
		type = type2;
	}

	public void dump() {
		for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
			for (ExtraData ed : en.getValue()) {
				System.out.println("key: " + ed.name);
				if (ed.type instanceof String)
					System.out.println("type: " + ed.type);
				else {
					System.out.println("type: bundle");
					((BundleType) ed.type).dump();
				}
			}
		}
	}

	@Override
	public String toString() {
		String res = "";
		for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
			for (ExtraData ed : en.getValue()) {
				if (!res.contains(ed.toString()))
					res += ed.toString();
			}
		}
		return res;
	}

	public void dump(BufferedWriter bw) {
		for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
			for (ExtraData ed : en.getValue()) {
				try {
					bw.write("key: " + ed.name + " ");
					if (ed.type instanceof String)
						bw.write("type: " + ed.type + System.getProperty("line.separator"));
					else {
						bw.write("type: bundle, key: " + ed.type + System.getProperty("line.separator"));
						((BundleType) ed.type).dump(bw);
					}
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		}
	}

	public void put(String u, List<ExtraData> eds) {
		bundle.put(u, eds);
		for (ExtraData ed : eds)
			if (ed.type instanceof String)
				contentSet.add(ed.type + ed.name);
			else
				contentSet.add("Bundle" + ed.name);
	}
	// public ExtraData get(String u) {
	// return bundle.get(u);
	// }

	public void write_param_file(BufferedWriter bw) {
		Set<String> set = new HashSet<String>();
		for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
			for (ExtraData ed : en.getValue()) {
				try {
					if (ed.type instanceof String) {
						String info = ed.toString();
						if (!set.contains(info)) {
							bw.write(info + System.getProperty("line.separator"));
							set.add(info);
						}
					} else {
						String info = ed.toString();
						if (!set.contains(info)) {
							bw.write("Bundle " + ed.name + " " + ((BundleType) ed.type).bundle.size()
									+ System.getProperty("line.separator"));
							((BundleType) ed.type).write_param_file(bw);
							set.add(info);
						}
					}
				} catch (IOException e1) {
					e1.printStackTrace();
				}
			}
		}
	}

	public String getKeyValPairNormal() {
		String res = "";
		for (Entry<String, List<ExtraData>> en : bundle.entrySet()) {
			for (ExtraData ed : en.getValue()) {
				if (ed.type instanceof String) {
					switch ((String) ed.type) {
					case "String":
						res += "--es " + ed.name + " abcd ";
						break;
					case "Integer":
						res += "--ei " + ed.name + " 0 ";
						break;
					case "Boolean":
						res += "--ez " + ed.name + " true ";
						break;
					}
				} else {
					res += ((BundleType) ed.type).getKeyValPairNormal();
				}
			}
		}
		return res;
	}
	@Override
	public BundleType clone() throws CloneNotSupportedException {
		BundleType bt = new BundleType(bundle, contentSet, type);
		return bt;
	}
}
