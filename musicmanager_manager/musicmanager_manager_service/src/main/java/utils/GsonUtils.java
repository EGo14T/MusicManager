package utils;

/**
 * Create by EGo1ST on 2019/6/6.
 * 说明：
 */
import com.google.gson.GsonBuilder;
import com.google.gson.*;

public class GsonUtils {

    private static Gson gson = null;

    static {
        GsonBuilder gsonBuilder = new GsonBuilder();
        gson = gsonBuilder.create();
    }

    public static String toJson(Object object){
        return gson.toJson(object);
    }

    public static <T> T fromJson(Class<T> clazz,String json){
        return gson.fromJson(json,clazz);
    }

}
