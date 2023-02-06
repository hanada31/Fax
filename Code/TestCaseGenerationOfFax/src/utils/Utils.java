package utils;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

import model.Attribute;

import com.google.common.io.Files;

import soot.SootClass;
import soot.Unit;
import soot.Value;
import soot.jimple.InvokeExpr;
import soot.jimple.NewExpr;
import soot.jimple.StaticFieldRef;
import soot.jimple.StaticInvokeExpr;
import soot.jimple.internal.JAssignStmt;
import soot.jimple.internal.JInvokeStmt;
import soot.jimple.internal.JStaticInvokeExpr;

public class Utils {
	
	
	/**
	 * create folder if it does not exist
	 * 
	 * @param folder
	 */
	public static void createFolder(String folder) {
		File fd = new File(folder);
		if (!fd.exists())
			fd.mkdirs();
	}
	
	 public static void readFromLaunchResult(String fileName, Set<String> launchSuccessfulSet) {  
	        File file = new File(fileName);  
	        BufferedReader reader = null;  
	        try {  
	            reader = new BufferedReader(new FileReader(file));  
	            String tempString = null;  
	            while ((tempString = reader.readLine()) != null) {  
	            	launchSuccessfulSet.add(tempString);
	            }  
	            reader.close();  
	        } catch (IOException e) {  
	            e.printStackTrace();  
	        } finally {  
	            if (reader != null) {  
	                try {  
	                    reader.close();  
	                } catch (IOException e1) {  
	                }  
	            }  
	        }  
	    }  
	 
    
	public static SootClass getClassInRightOp(Value rightOp) {
		if( rightOp instanceof StaticInvokeExpr )
			return ((StaticInvokeExpr) rightOp).getMethod().getDeclaringClass();
		else if( rightOp instanceof NewExpr )
			return ((NewExpr) rightOp).getBaseType().getSootClass();
		else if( rightOp instanceof StaticFieldRef )
			return ((StaticFieldRef) rightOp).getField().getDeclaringClass();
		else
			return null;
	}
	
	
	public static InvokeExpr getInvokeExp(Unit useUnit) {
		InvokeExpr invoke = null;
		if (useUnit instanceof JAssignStmt) {
			JAssignStmt jas = (JAssignStmt) useUnit;
			if (jas.containsInvokeExpr()) {
				invoke = jas.getInvokeExpr();
			}
		} else if (useUnit instanceof JInvokeStmt) {
			invoke = ((JInvokeStmt) useUnit).getInvokeExpr();
		} else if (useUnit instanceof JStaticInvokeExpr) {
			invoke = ((JStaticInvokeExpr) useUnit);
		}
		
		
		
		return invoke;
	}

	public static boolean isInteger(String str) {
		if (str == null || str.equals(""))
			return false;
		Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
		return pattern.matcher(str).matches();
	}

	public static void copyDir(String sourcePath, String newPath)  {
        File file = new File(sourcePath);
        String[] filePath = file.list();
        
        if (!(new File(newPath)).exists()) {
            (new File(newPath)).mkdir();
        }
        
        for (int i = 0; i < filePath.length; i++) {
            if ((new File(sourcePath + File.separator + filePath[i])).isDirectory()) {
                copyDir(sourcePath  + File.separator  + filePath[i], newPath   + File.separator + filePath[i]);
            }
            
            if (new File(sourcePath  + File.separator + filePath[i]).isFile()) {
                copyFile(sourcePath + File.separator + filePath[i], newPath  + File.separator + filePath[i]);
            }
            
        }
    }
	
	public static void copyFile(String oldf, String newf) {
		File f1 = new File(oldf);
		File f2 = new File(newf);
		try {
			Files.copy(f1, f2);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void moveFile(String oldf, String newf) {
		File f1 = new File(oldf);
		File f2 = new File(newf);
		try {
			Files.move(f1, f2);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static String refineString(String old) {
		if(old==null || old.equals("\"\"")) return "null";
		String newStr = old.replace("\\", "").replace("\"", "");
		return newStr;
	}

	public static String exec(String commandStr) {
		String out ="";
		String os = System.getProperty("os.name");
		// System.out.println(os+" os!!!");
		if (os.toLowerCase().startsWith("win")) {
			out = exeCmd(commandStr);
			System.out.println(out);
		} else {
			out = exeShell(commandStr);
		}
		return out;
	}

	public static String exeShell(String commandStr) {
		BufferedReader br = null;
		StringBuilder sb = new StringBuilder();
		try {
			String[] cmdA = { "/bin/sh", "-c", commandStr };
			Process process = Runtime.getRuntime().exec(cmdA);
			br = new BufferedReader(new InputStreamReader(process.getInputStream()));
			String line = null;
			while ((line = br.readLine()) != null) {
				System.out.println(line);
				sb.append(line).append("\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return sb.toString();
	}

	public static String exeCmd(String commandStr) {
		BufferedReader br = null;
		StringBuilder sb = new StringBuilder();
		try {
			commandStr = "cmd /c " + commandStr;
			Process p = Runtime.getRuntime().exec(commandStr);
			// p.waitFor();
			br = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line = null;
			while ((line = br.readLine()) != null) {
				if (line.contains("java.io.FileNotFoundException"))
					System.out.println(line);
				sb.append(line + "\n");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return sb.toString();
	}

	public static String getStringFromFile(String filename) {
		String res = "";
		File file = new File(filename);
		InputStream instream = null;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream, "gbk");
				buffreader = new BufferedReader(inputreader);
				String line;
				while ((line = buffreader.readLine()) != null) {
					res += line + "\n";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				buffreader.close();
				inputreader.close();
				instream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return res;
	}

	public static String getStringFromTcas(String filename, Set<String> historyICC) {
		String res = "";
		File file = new File(filename);
		InputStream instream = null;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream, "gbk");
				buffreader = new BufferedReader(inputreader);
				String line;
				while ((line = buffreader.readLine()) != null) {
					if (line.startsWith("#"))
						continue;
					if (!historyICC.contains(line)) {
						res += line + "\n";
						historyICC.add(line);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				buffreader.close();
				inputreader.close();
				instream.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return res;
	}

	public static ArrayList<String> getList(String filename) {
		ArrayList<String> list = new ArrayList<String>();
		File file = new File(filename);
		InputStream instream = null;
		InputStreamReader inputreader = null;
		BufferedReader buffreader = null;
		try {
			instream = new FileInputStream(file);
			if (instream != null) {
				inputreader = new InputStreamReader(instream, "gbk");
				buffreader = new BufferedReader(inputreader);
				String line;
				while ((line = buffreader.readLine()) != null) {
					// line = line.replace("\n", "");
					list.add(line);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(buffreader!=null){
					buffreader.close();
					inputreader.close();
					instream.close();
				}else{
					return null;
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public static Object deserialize(String file_name) {
		Object obj = null;
		try {
			FileInputStream fis = new FileInputStream(file_name);
			ObjectInputStream ois = new ObjectInputStream(fis);
			obj = ois.readObject();
			ois.close();
			fis.close();
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(file_name + " deserialize fail");
		}
		return obj;
	}

	public static void serialize(String file_name, Object obj) {
		try {
			FileOutputStream fos = new FileOutputStream(file_name);
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(obj);
			oos.close();
			fos.close();
			System.out.println("successful searilize");
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(file_name + " searilize fail");
		}
	}

	public static void output_List(String sta_res_dir, String name, List<String> resList) {
		String filename = sta_res_dir + "/" + name;
		File f = new File(filename);
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f));
			for (String s : resList) {
				writer.write(s + "\n");
			}
			writer.write("\n");
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

	public static void add_set_to_map(String key, Set<String> resList, Map<String, Set<String>> map) {
		Set<String> set;
		if (map == null)
			return;
		if (map.containsKey(key)) {
			set = map.get(key);
		} else {
			set = new HashSet<String>();
		}
		set.addAll(resList);
		map.put(key, set);
	}

	public static Set<String> get_set_from_map(String key, Map<String, Set<String>> map) {
		Set<String> set = new HashSet<String>();
		if (map != null && map.containsKey(key)) {
			set = map.get(key);
		}
		return set;
	}

	public static void add_str_to_map(String key, String s, Map<String, String> map) {
		if (map == null || key == null)
			return;
		if (!map.containsKey(key)) {
			map.put(key, s);
		}
	}

	public static void add_attribute_to_map(String key, Attribute attr, Map<String, Attribute> map) {
		if (map == null || key == null)
			return;
		if (!map.containsKey(key)) {
			map.put(key, attr);
		}
	}

	public static String get_str_from_map(String key, Map<String, String> map) {
		String s = "";
		if (map != null && map.containsKey(key)) {
			s = map.get(key);
		}
		return s;
	}

	public static Attribute get_attribute_from_map(String key, Map<String, Attribute> map) {
		Attribute s = null;
		if (map != null && map.containsKey(key)) {
			s = map.get(key);
		}
		return s;
	}


	public static List<String> removeDuplicate(List<String> list) {
		HashSet<String> h = new HashSet<String>(list);
		list.clear();
		list.addAll(h);
		return list;
	}

	public synchronized static void printInfo(Object ob) {
		String s = ob.toString();
		String path = "result/";
		File pathf = new File(path);
		if (!pathf.exists())
			pathf.mkdirs();
		IOUtils.write_to_file("result/temp_output.txt", s + "\n", true);
	}


	public static Map<String, Integer> sortMapByValue(Map<String, Integer> oriMap) {
		if (oriMap == null || oriMap.isEmpty()) {
			return null;
		}
		Map<String, Integer> sortedMap = new LinkedHashMap<String, Integer>();
		List<Map.Entry<String, Integer>> entryList = new ArrayList<Map.Entry<String, Integer>>(oriMap.entrySet());
		Collections.sort(entryList, new MapValueComparator());

		Iterator<Map.Entry<String, Integer>> iter = entryList.iterator();
		Map.Entry<String, Integer> tmpEntry = null;
		while (iter.hasNext()) {
			tmpEntry = iter.next();
			sortedMap.put(tmpEntry.getKey(), tmpEntry.getValue());
		}
		return sortedMap;
	}


	// modified
	public static boolean isEntryFunction(String entry) {
		String ss[] = entry.split(" ");
		if (ss[ss.length - 1].startsWith("onCreate(")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onStart(")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onResume(")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onRestart(")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onPause(")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onStop(")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onDestroy")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onNewIntent")) {
			return true;
		}
		if (ss[ss.length - 1].startsWith("onResumeFragments")) {
			return true;
		}
		return false;
	}


	/**
	   * ѭ��ʵ��dimValue�еĵѿ��������������result��
	   * @param dimValue ԭʼ����
	   * @param result �������
	   */
	  public static void circulate (List<List<String>> dimValue, List<List<String>> result) {
	    int total = 1;
	    for (List<String> list : dimValue) {
	      total *= list.size();
	    }
	    String[] myResult = new String[total];
	    int itemLoopNum = 1;
	    int loopPerItem = 1;
	    int now = 1;
	    for (List<String> list : dimValue) {
	      now *= list.size();
	      int index = 0;
	      int currentSize = list.size();
	      itemLoopNum = total / now;
	      loopPerItem = total / (itemLoopNum * currentSize);
	      int myIndex = 0;
	      for (String string : list) {
	        for (int i = 0; i < loopPerItem; i++) {
	          if (myIndex == list.size()) {
	            myIndex = 0;
	          }
	          for (int j = 0; j < itemLoopNum; j++) {
	            myResult[index] = (myResult[index] == null? "" : myResult[index] + ",") + list.get(myIndex);
	            index++;
	          }
	          myIndex++;
	        }
	      }
	    }
	    List<String> stringResult = Arrays.asList(myResult);
	    for (String string : stringResult) {
	      String[] stringArray = string.split(",");
	      result.add(Arrays.asList(stringArray));
	    }
	  }
}

class MapValueComparator implements Comparator<Map.Entry<String, Integer>> {

	@Override
	public int compare(Entry<String, Integer> me1, Entry<String, Integer> me2) {

		return me2.getValue().compareTo(me1.getValue());
	}

}
