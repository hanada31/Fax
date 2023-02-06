package solver;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import model.Attribute;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Solver;
import com.microsoft.z3.Status;

public class ConstrainSolver {

	public static  Set<String> eliminateConfictedPaths(List<Attribute> globalPath) {
		Set<String> res = new HashSet<String>();
		List<StringBuilder> stmtStrs = createSTMTFileList(globalPath);
		for(StringBuilder stmtStr : stmtStrs){
			String modelofPath = checkSatisfiablity(stmtStr.toString(),globalPath);
			String  modelStr= modelofPath.toString().replace("\n", " ").replace("(", "").replace(")", "");
	        while(modelStr.contains("  "))
	        	modelStr = modelStr.replace("  ", " ");
	        if(!res.contains(modelStr)){
	        	res.add(modelStr);
	        }
//	        Utils.printInfo(stmtStr+"\n"+PrintUtils.printset(res)+"\n");
		}
		return res;
	}
	
	public static String checkSatisfiablity(String stmtStr, List<Attribute> globalPath) {
		String res = "";
		HashMap<String, String> cfg = new HashMap<String, String>();
        cfg.put("model", "true");
        Context ctx = new Context(cfg);
        Solver s =null;
        try{
	        s = ctx.mkSolver();  
	        BoolExpr stmt = ctx.mkAnd(ctx.parseSMTLIB2String(stmtStr, null, null, null, null));
	        s.add(stmt);
	        Status result = s.check();  
	        if (result == Status.SATISFIABLE){  
	        	res = s.getModel().toString();
	        }else{
	        	res = "unsat!";
	        }
        }catch(Exception e){
        	e.printStackTrace();
        }finally{
        	ctx.close();
        	ctx = null;
        	s = null;
        	 System.gc();
        }
       
        return res;
	}


	public static List<StringBuilder> createSTMTFileList(List<Attribute> globalPath) {
		List<StringBuilder> sbs = new ArrayList<StringBuilder>();
		sbs.add(new StringBuilder("(set-option :smt.string_solver z3str3)\n"));
		//!!!!
		sbs.add(new StringBuilder("(set-option :timeout 10000)\n"));
		for (Attribute att: globalPath){
			ListIterator <StringBuilder> iterator  = sbs.listIterator();
			while (iterator.hasNext()) {
				 StringBuilder sb = iterator.next();
				 String ss[] = att.value.split(", ");
				 for(int i = 0; i< ss.length; i++){
						if(i!=ss.length-1){
							StringBuilder sb_new = new StringBuilder(sb);
							completeSb(att,sb_new,i);
							iterator.add(sb_new);
						}else{
							completeSb(att,sb,i);
						}
					}
			}
		}
		return sbs;
	}
	
	private static void completeSb(Attribute att, StringBuilder sb, int i) {
		if(!att.type.equals("extra")){
			addADTStmt2Sb(att, sb, i);
//			Utils.printInfo(att);
		}
	}
	
	public static void addADTStmt2Sb(Attribute att, StringBuilder sb, int i) {
		String declareStr = "(declare-const " +att.type+ " String)\n";
		if(!sb.toString().contains(declareStr))
			sb.append(declareStr);
		String leftVal  = getLeftCondition(att);
		String assertStr = "";
		if(att.value.length()==0){
			assertStr = "(= (str.len "+leftVal+") 0)";
		}else{
			if(att.condition.equals("equals") || att.condition.equals("contentEquals") || att.condition.equals("equalsIgnoreCase")){
				String ss[] = att.value.split(", ");
				assertStr = "(= " +leftVal+ " "+ss[i]+")";
			}
			else if(att.condition.equals("contains")){
				String ss[] = att.value.split(", ");
				assertStr = "(= " +leftVal+ " "+ss[i]+")";
			}
			else if(att.condition.equals("startsWith")){
				String ss[] = att.value.split(", ");
				assertStr = " (str.prefixof " +ss[i]+ " "+leftVal+")";
			}
			else if(att.condition.equals("endsWith")){
				String ss[] = att.value.split(", ");
				assertStr = " (str.suffixof " +ss[i]+ " "+leftVal+")";;
			}
			else if(att.condition.equals("contains")){
				String ss[] = att.value.split(", ");
				assertStr = "(= " +leftVal+ " "+ss[i]+")";
			}
			else if(att.condition.equals("nullChecker")){
				assertStr = "(= (str.len "+leftVal+") 0)";
			}
			else if(att.condition.equals("isEmpty")){
				assertStr = "(= (str.len "+leftVal+") 0)";
			}
		}
		if(assertStr.length()>0){
			if(att.isSatisfy>0)
				assertStr = "(assert " + assertStr + ")\n";
			else
				assertStr = "(assert (not " + assertStr + "))\n";
		}
		sb.append(assertStr);
	}
	
	

	private static String getLeftCondition(Attribute att) {
		String leftVal = att.type;
		String conds[] = att.conditionOfLeft.split(",");
		for(String cond :conds){
			if(cond.length()==0) continue;
			String condLeft = cond.split(" ")[0];
			if(condLeft.contains("substring")){
				String[] ss = cond.split(" ");
				//(str.substr action 0 3)
				if(ss.length==2){
					int e = att.value.length()-Integer.parseInt(ss[1]);
					leftVal = "(str.substr " +leftVal + " "+ss[1]+" "+e+ ")";
				}
				else {
					leftVal = "(str.substr " +leftVal + " "+ss[1]+" "+ss[2]+ ")";
				}
			}else if (condLeft.contains("charAt")){
				//(str.at action 2) 
				String[] ss = cond.split(" ");
				leftVal = "(str.at " +leftVal + " "+ss[1]+ ")";
				try{
					int charInt = Integer.parseInt(att.value.replace("\"", ""));
					char ch = (char) charInt;
					att.value =  "\""+String.valueOf(ch)+"\"";
				}catch(NumberFormatException e) {
					//nothing
				}
			}else if (condLeft.contains("concat")){
				//(str.++ action 2) 
				String[] ss = cond.split(" ");
				leftVal = "(str.++ " +leftVal + " \""+ss[1]+ "\")";
			}
		}
		return leftVal;
	}
}
