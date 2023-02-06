package utils;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

public class IOUtils {
	
	public synchronized static void printInfo(Object ob){
		String s= ob.toString();
		String path = "result/";
		File pathf = new File(path);
		if(!pathf.exists())
			pathf.mkdirs();
		write_to_file("result/temp_output.txt",s+"\n",true);
	}
	
    public static void delFolder(String folderPath) {
	    try {
	       delAllFile(folderPath); //ɾ����������������
	       String filePath = folderPath;
	       filePath = filePath.toString();
	       java.io.File myFilePath = new java.io.File(filePath);
	       myFilePath.delete(); //ɾ�����ļ���
	    } catch (Exception e) {
	      e.printStackTrace(); 
	    }
    }
    
    public static boolean delAllFile(String path) {
        boolean flag = false;
        File file = new File(path);
        if (!file.exists()) {
          return flag;
        }
        if (!file.isDirectory()) {
          return flag;
        }
        String[] tempList = file.list();
        File temp = null;
        for (int i = 0; i < tempList.length; i++) {
           if (path.endsWith(File.separator)) {
              temp = new File(path + tempList[i]);
           } else {
               temp = new File(path + File.separator + tempList[i]);
           }
           if (temp.isFile()) {
              temp.delete();
           }
           if (temp.isDirectory()) {
              delAllFile(path + "/" + tempList[i]);//��ɾ���ļ���������ļ�
              delFolder(path + "/" + tempList[i]);//��ɾ�����ļ���
              flag = true;
           }
        }
        return flag;
      }
	public static synchronized void write_to_file(String filename, String content, boolean flag) {
		File f = new File(filename);
		if(!f.exists()){
			try {
				System.out.println("create " + filename);
				f.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		BufferedWriter writer = null;
		try {
			writer = new BufferedWriter(new FileWriter(f,flag));
			writer.write(content);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("can not write");
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
	public static String printset(Set set){
		String res="";
	    Iterator it1 = set.iterator();
	    while(it1.hasNext()){
	        res +=it1.next().toString()+", ";
	    }
	    return res;
	}
	public static String printList(List list){
		String res="";
	    for(Object o :list){
	    	res += o.toString()+", ";
	    }
	    return res;
	}
	public static String printMap(Map<?,?> map){
		String res="";
	    for(Entry en :map.entrySet()){
	    	res += "("+en.getKey()+", "+en.getValue()+")"+"\n";
	    }
	    return res;
	}

}
