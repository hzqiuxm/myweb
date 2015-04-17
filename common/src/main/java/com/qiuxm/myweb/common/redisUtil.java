package com.qiuxm.myweb.common;/**
 * Created by hzqiuxm on 2015/4/17.
 */

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

/**
 * Created by hzqiuxm on 2015/4/17.
 */
public class redisUtil {

    private static String HOST="192.168.1.56"; //本机地址

    private static Integer PORT=6379; //服务端口

    private static JedisPoolConfig config; //连接池的配置对象

    private static JedisPool pool; //连接池对象

    static{

        config = new JedisPoolConfig();

        config.setMaxIdle(1024*10); //设置内存大小

        pool = new JedisPool(config,HOST);

    }

    /**

     *

     * @return 从连接池里获取一个Jedis对象

     */

    public static Jedis getPoolJedis(){

        return pool.getResource();

    }

    /**

     * 手动把Jedis对象，回放到连接池里

     */

    public static void returnPoolJedis(Jedis jedis){

        pool.returnResource(jedis);

    }

    /**

     * @return 直接创建一个Jedis连接

     */

    public static Jedis getJedis(){

        return new Jedis(HOST, PORT);

    }

}


