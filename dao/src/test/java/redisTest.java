/**
 * Created by hzqiuxm on 2015/4/17.
 */

import com.qiuxm.myweb.common.SpringContextUtil;
import redis.clients.jedis.ShardedJedis;

/**
 * Created by hzqiuxm on 2015/4/17.
 */
public class redisTest {

    public static void main(String[] args) {
        // TODO Auto-generated method stub
//        new redisClient().show();
//        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
//        JedisPool pool = (JedisPool) context.getBean("jedisPool");
//        Jedis jedis = pool.getResource();

//        ApplicationContext ac1 = WebApplicationContextUtils.getRequiredWebApplicationContext(ServletContext sc);

        ShardedJedis shardedJedis = (ShardedJedis)SpringContextUtil.getBean("shardedJedis");
//        System.out.println("判断key999键是否存在：" + shardedJedis.exists("qxm"));
        System.out.println("Test end !======================");


    }

//    @Test
//    public void test1(){
//
//        System.out.println("Test begin ........");
//
////        ShardedJedis shardedJedis = (ShardedJedis)SpringContextUtil.getBean("shardedJedis");
//        System.out.println(SpringContextUtil.isSingleton("shardedJedis"));
//
////        System.out.println("判断key999键是否存在：" + shardedJedis.exists("qxm"));
//        System.out.println("Test end !======================");
//
//    }
}
