/**
 * Created by hzqiuxm on 2015/4/17.
 */

import com.qiuxm.myweb.common.redisUtil;
import redis.clients.jedis.Jedis;

import java.util.List;

/**
 * Created by hzqiuxm on 2015/4/17.
 */
public class utilTest {
    public static void main(String[] args) {

//simpleSet();

        mSet();

    }

    private static void mSet() {

//注意 如果使用 redisUtil.getJedis(); 是直接创建一个jredis对象，所以不受连接池管理，所以不能回放到连接池里

        Jedis jedis = redisUtil.getPoolJedis();

//设置值多个值

        jedis.mset("userName","user1","pwd","123");

//取值

        List<String> list = jedis.mget("userName","pwd");

        for (String string : list) {

            System.out.println(string);

        }

        jedis.flushDB();

        redisUtil.returnPoolJedis(jedis);

    }

    private static void simpleSet() {

        Jedis jedis = redisUtil.getPoolJedis();

//设置值

        jedis.set("userName", "user1");

//取值

        System.out.println("userName："+jedis.get("userName"));

//清空内存数据库

        jedis.flushDB();

        redisUtil.returnPoolJedis(jedis);

    }
}
