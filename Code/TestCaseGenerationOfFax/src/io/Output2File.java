package io;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashSet;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import soot.Unit;
import utils.IOUtils;
import model.ActivityModel;
import model.AppModel;
import model.BundleType;
import model.ICCMsg;
import model.IntentFilterModel;

import com.google.common.collect.Sets;

public class Output2File {
	public static void write_param_file(String param_file, BundleType bt) {

		File f = new File(param_file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			if (bt != null)
				bt.write_param_file(writer);
			// writer.write("----------------------\n");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void write_DeclaredActivityModel(String EA_info_file, AppModel appModel) {
		File f = new File(EA_info_file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			writer.write("app_name: ");
			if (appModel.appName != null)
				writer.write(appModel.appName);
			writer.write(System.getProperty("line.separator"));

			writer.write("package_name: ");
			if (appModel.packageName != null)
				writer.write(appModel.packageName);
			writer.write(System.getProperty("line.separator"));

			for (ActivityModel act_data: appModel.ops.getActivityMap().values()) {
				writer.write(System.getProperty("line.separator"));
				writer.write("act_name: ");
				if (act_data.getComponetName() != null)
					writer.write(act_data.getComponetName());
				writer.write(System.getProperty("line.separator"));

				if (act_data.getExported() != null && act_data.getExported().equals("true")) {
					writer.write("mExported");
					writer.write(System.getProperty("line.separator"));
				}

				writer.write("permission: ");
				if (act_data.getPermission() != null)
					writer.write(act_data.getPermission());
				writer.write(System.getProperty("line.separator"));

				boolean hasIf = false;
				if (act_data.getData_item_list().bundle.size() > 0) {
					writer.write("extra_data A: " + System.getProperty("line.separator"));
					act_data.getData_item_list().write_param_file(writer);
				}

				for (int i = 0; i < act_data.getIntent_filter_data_list().size(); i++) {
					IntentFilterModel ifd = act_data.getIntent_filter_data_list().get(i);
					if (ifd.action_list.size() == 0)
						continue;
					if (!hasIf) {
						writer.write("mIntentFilter");
						writer.write(System.getProperty("line.separator"));
						hasIf = true;
					}
					writer.write("intent_filter: " + System.getProperty("line.separator"));

					if (ifd.action_list.size() > 0) {
						for (String action : ifd.action_list)
							writer.write("action: " + action + " ");
						writer.write(System.getProperty("line.separator"));
					}

					if (ifd.category_list.size() > 0) {
						for (String category : ifd.category_list)
							writer.write("category: " + category + " ");
						writer.write(System.getProperty("line.separator"));
					}

					if (ifd.mime_type_list.size() > 0) {
						for (String mime : ifd.mime_type_list)
							writer.write("mime: " + mime + " ");
						writer.write(System.getProperty("line.separator"));
					}

					if (!ifd.scheme.equals("")) {
						writer.write("scheme: " + ifd.scheme + "://");
						if (!ifd.host.equals("")) {
							writer.write("host: " + ifd.host);

							if (!ifd.port.equals("")) {
								writer.write(": " + ifd.port);
							}
							if (!ifd.path.equals("")) {
								writer.write("/" + ifd.path);
							}
						} else {
						}
						writer.write(System.getProperty("line.separator"));
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void write_RES_file(String filename, AppModel appModel) {
		File f = new File(filename);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));

			writer.write("Total Activity Number: " + appModel.ops.getActivityMap().keySet().size() + "\n");
			writer.write("Exported Activity Number: " + appModel.ops.getEaMap().size() + "\n");


			writer.write("Get Action Number: " + appModel.get_action_num + "\n");
			writer.write("Get Category Number: " + appModel.get_category_num + "\n");
			writer.write("Get Data Number: " + appModel.get_data_num + "\n");
			writer.write("Get Type Number: " + appModel.get_type_num + "\n\n");

			// yew+no = get xxx num
			writer.write("Action Be Compared Number: " + appModel.action_be_compared + "\n");
			writer.write("Action Not Be Compared Number: " + appModel.action_not_be_compared + "\n");
			writer.write("Category Be Compared Number: " + appModel.category_be_compared + "\n");
			writer.write("Category Not Be Compared Number: " + appModel.category_not_be_compared + "\n");
			writer.write("Data Be Compared Number: " + appModel.data_be_compared + "\n");
			writer.write("Data Not Be Compared Number: " + appModel.data_not_be_compared + "\n");
			writer.write("Type Be Compared Number: " + appModel.type_be_compared + "\n");
			writer.write("Type Not Be Compared Number: " + appModel.type_not_be_compared + "\n\n");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void init_file(String filename) {
		File f = new File(filename);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void writeAttributes(String dir, String file, Map<String, Set<String>> map, AppModel appModel) {
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			if (map == null)
				return;
			for (Entry<String, Set<String>> en : map.entrySet()) {
				String className = en.getKey();
				Set<String> resList = en.getValue();
				for (String attr : resList) {
					if (!attr.startsWith("\""))
						attr = "\"" + attr + "\"";
					writer.write(className + ", " + attr + "\n");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	public static void writeDotFile(String dir, String file, Map<String, Set<String>> map, AppModel appModel) {
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			if (map == null)
				return;
			writer.write("digraph G {\n");
			for(String act: appModel.activityMap.keySet())
				writer.write(act.split("\\.")[act.split("\\.").length-1]+"\n");
			
			for (Entry<String, Set<String>> en : map.entrySet()) {
				String className = en.getKey();
				Set<String> resList = en.getValue();
				for (String des : resList) {
					writer.write(className.split("\\.")[className.split("\\.").length-1] + "->" + des.split("\\.")[des.split("\\.").length-1] + "\n");
				}
			}
			writer.write("}\n");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	

	public static void writeCompare(String dir, String file, AppModel appModel, String type, Boolean flag) {
		File fd = new File(dir);
		File f = new File(dir+file);
		try {
			if(!fd.exists())	fd.mkdirs();
			if(!f.exists())	f.createNewFile();
			
			} catch (IOException e1) {
				e1.printStackTrace();
		}
		BufferedWriter writer = null;
		Map<String, Set<String>> mapUse = null;
		Map<String, Set<String>> mapDec = null;

		if (type.equals("Action")) {
			mapUse = appModel.used_action_item_map_of_app;
			mapDec = appModel.declared_action_item_map_of_app;
		} else if (type.equals("Category")) {
			mapUse = appModel.used_category_item_map_of_app;
			mapDec = appModel.declared_category_item_map_of_app;
		} else if (type.equals("Data")) {
			mapUse = appModel.used_data_item_map_of_app;
			mapDec = appModel.declared_data_item_map_of_app;
		} else if (type.equals("Type")) {
			mapUse = appModel.used_type_item_map_of_app;
			mapDec = appModel.declared_type_item_map_of_app;
		}

		int useNum = 0, decNum = 0, useNotDec = 0, decNotUse = 0, both = 0;
		for (String name : appModel.ops.getActivityMap().keySet()) {
			Set<String> setUse = new HashSet<String>();
			Set<String> setDec = new HashSet<String>();
			if (mapUse.containsKey(name)) {
				setUse = new HashSet<String>(mapUse.get(name));
				setUse.remove("\"notEmpty\"");
				useNum += setUse.size();
			}
			if (mapDec.containsKey(name)) {
				setDec = new HashSet<String>(mapDec.get(name));
				decNum += setDec.size();
			}
			both += Sets.intersection(setDec, setUse).size();
			useNotDec += Sets.difference(setUse, setDec).size();
			decNotUse += Sets.difference(setDec, setUse).size();
		}
		try {
			writer = new BufferedWriter(new FileWriter(f, flag));
			writer.write(type + " useNum: " + useNum + "\n");
			writer.write(type + " decNum: " + decNum + "\n");
			writer.write(type + " useNotDec: " + useNotDec + "\n");
			writer.write(type + " decNotUse: " + decNotUse + "\n");
			writer.write(type + " both: " + both + "\n\n");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void writeUsedActivityModel(String dir, String file, AppModel appModel) {
		File fd = new File(dir);
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			if(!fd.exists())	fd.mkdirs();
			if(!f.exists())f.createNewFile();
			writer = new BufferedWriter(new FileWriter(f));
			for (String eaName : appModel.ops.getActivityMap().keySet()) {
				BundleType extras = appModel.data_item_map_of_app.get(eaName);
				Set<String> actions = appModel.used_action_item_map_of_app.get(eaName);
				Set<String> category = appModel.used_category_item_map_of_app.get(eaName);
				Set<String> data = appModel.used_data_item_map_of_app.get(eaName);
				Set<String> type = appModel.used_type_item_map_of_app.get(eaName);

				writer.write(eaName + "\n");
				if (actions != null)
					for (String a : actions)
						writer.write("action: " + a + "\n");
				if (category != null)
					for (String c : category)
						writer.write("category: " + c + "\n");
				if (data != null)
					for (String d : data)
						writer.write("data: " + d + "\n");
				if (type != null)
					for (String t : type)
						writer.write("type: " + t + "\n");
				if (extras != null)
					writer.write("extra: " + extras.toString() + "\n");
				writer.write("---------------------------------------\n\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void writeManifest(String dir, String file, AppModel appModel) {
		File fd = new File(dir);
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			if(!fd.exists())	fd.mkdirs();
			if(!f.exists())f.createNewFile();
			writer = new BufferedWriter(new FileWriter(f));
			writer.write(appModel.manifestString);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	public static void writeExActivity(String dir, String file, AppModel appModel) {
		File fd = new File(dir);
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			if(!fd.exists())	fd.mkdirs();
			if(!f.exists())f.createNewFile();
			writer = new BufferedWriter(new FileWriter(f));
			for (String act: appModel.eaMap.keySet())
				writer.write(act+"\n");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	public static void writeActivity(String dir, String file, AppModel appModel) {
		File fd = new File(dir);
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			if(!fd.exists())	fd.mkdirs();
			if(!f.exists())f.createNewFile();
			writer = new BufferedWriter(new FileWriter(f));
			for (String act: appModel.activityMap.keySet())
				writer.write(act+"\n");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public static void writeStatistic(String dir, String file, AppModel appModel) {
		File fd = new File(dir);
		if(!fd.exists())	fd.mkdirs();
		
		IOUtils.write_to_file(dir+file, "------------stringModel_attri------------\n", false);
		IOUtils.write_to_file(dir+file, appModel.stringModel_attri.toString(), true);
		IOUtils.write_to_file(dir+file, "------------stringSource_attri------------\n", true);
		IOUtils.write_to_file(dir+file, appModel.stringSource_attri.toString(), true);

		IOUtils.write_to_file(dir+file, "------------stringModel_extra------------\n", true);
		IOUtils.write_to_file(dir+file, appModel.stringModel_extra.toString(), true);
		IOUtils.write_to_file(dir+file, "------------stringSource_extra------------\n", true);
		IOUtils.write_to_file(dir+file, appModel.stringSource_extra.toString(), true);
	}

	public static void write_AUPs(String dir, String file, AppModel appModel) {
		File fd = new File(dir);
		File f = new File(dir+file);
		try {
			if(!fd.exists())	fd.mkdirs();
			if(!f.exists())	f.createNewFile();
			
			} catch (IOException e1) {
				e1.printStackTrace();
		}
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			for(Entry<String, Set<ICCMsg>> en: appModel.pathMap_AU.entrySet()){
				writer.write("key: "+ en.getKey()+"\n");
				for(ICCMsg icc: en.getValue())
					writer.write(icc.toString());
				writer.write("\n");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public static void write2(String dir, String file, Map<String, String> map, AppModel appModel) {
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			if (map == null)
				return;
			for (Entry<String, String> en : map.entrySet()) {
					writer.write(en.getKey() + "\n");
					writer.write(en.getValue() + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}
	
	public static void write3(String dir, String file, Map<String, Set<Unit>> map, AppModel appModel) {
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			if (map == null)
				return;
			for (Entry<String, Set<Unit>> en : map.entrySet()) {
					writer.write(en.getKey() + "\n");
					for(Unit u :en.getValue())
					writer.write(u + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static void write4(String dir, String file, 	Map<String, Set<String>> map, AppModel appModel) {
		File f = new File(dir+file);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			if (map == null)
				return;
			for (Entry<String, Set<String>> en : map.entrySet()) {
					writer.write(en.getKey() + "\n");
					for(String u :en.getValue())
					writer.write(u + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
	}
}
