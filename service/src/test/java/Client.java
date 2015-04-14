/**
 * Created by hzqiuxm on 2015/3/28.
 */

import com.qiuxm.myweb.service.factory.Factory;
import com.qiuxm.myweb.service.interfaces.Api;

/**
 * Created by hzqiuxm on 2015/3/28.
 */
public class Client {
    public static void main(String[] args) {
        Api api  = Factory.createApi();
        api.test1("别紧张，我只是来测试一下!");
    }
}
