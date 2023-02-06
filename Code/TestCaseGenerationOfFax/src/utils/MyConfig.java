package utils;

public class MyConfig {

    private MyConfig() {}
    public boolean isJimple = true;
    
    private static class SingletonInstance {
        private static final MyConfig INSTANCE = new MyConfig();
    }

    public static MyConfig getInstance() {
        return SingletonInstance.INSTANCE;
    }
}