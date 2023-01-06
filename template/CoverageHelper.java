package utils;

import java.util.HashMap;

/**
 * Created by liyc on 6/1/16.
 * Helper class to add to target APK
 */
public class CoverageHelper {
    private static HashMap<String, Integer> reachedCounts = new HashMap<String, Integer>();
    private static final boolean logEveryReach = false;

    public static void reach(String pointName) {
        try {
            if (!reachedCounts.containsKey(pointName)) {
                reachedCounts.put(pointName, 1);
                String logMessage = String.format("[androcov] reach 1: %s", pointName);
                Log.i(logMessage);
            }
            else if (logEveryReach) {
                Integer count = reachedCounts.get(pointName);
                count += 1;
                reachedCounts.put(pointName, count);

                String logMessage = String.format("[androcov] reach %d: %s", count, pointName);
                Log.i(logMessage);
            }
        }
        catch (Exception e) {
            // Ignore any exception
        }
    }
}
