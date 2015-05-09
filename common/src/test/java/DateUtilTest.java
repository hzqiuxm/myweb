import org.joda.time.DateTime;
import org.joda.time.LocalDate;
import org.joda.time.LocalTime;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by Administrator on 2015/5/9.
 */
public class DateUtilTest {

    public static void main(String[] args) {

        //创建一个任意的时间：2000年1月1号0点0分0秒
        Calendar calendar = Calendar.getInstance();
        calendar.set(2000,Calendar.JANUARY,1,0,0,0);

        DateTime dateTime = new DateTime(2000,1,1,0,0,0,0);


        //继续复杂化时间 加上90天
        SimpleDateFormat sdf =
                new SimpleDateFormat("E MM/dd/yyyy HH:mm:ss.SSS");
        calendar.add(Calendar.DAY_OF_MONTH, 90);
        System.out.println("use Calendar :" + sdf.format(calendar.getTime()));

        System.out.println("use Joda-time :" + dateTime.plusDays(90).toString("E MM/dd/yyyy HH:mm:ss.SSS"));


        //继续复杂化  距离2000年1月1号0点0分0秒后的45天之后的某天在下一个月的当前周的最后一天的日期
        //Calendar 怎么写？反正我是头大了 ... ... 不是写不出，是根本不想写

        System.out.println(dateTime.plusDays(45).plusMonths(1).dayOfWeek().withMaximumValue().toString("E MM/dd/yyyy HH:mm:ss.SSS"));

        calendar.setTime(dateTime.toDate());

        //DateTime 毫秒级时间
        DateTime dateTime1 = new DateTime();
        System.out.println(dateTime1); //2015-05-09T21:55:51.118+08:00

        //局部时间
        LocalDate localDate = new LocalDate(2015,5,1);
        System.out.println(localDate);//2015-05-01

        LocalDate nowdate = new LocalDate();
        System.out.println(nowdate);

        LocalTime localTime = new LocalTime(13,30,26);
        System.out.println(localTime); //13:30:26.000

        //属性应用 获得上个月最后一天
        System.out.println(nowdate.minusMonths(1).dayOfMonth().withMaximumValue());//2015-04-30

        //获得11月中第一个星期之后的第一个星期二
        nowdate.monthOfYear().setCopy(11)  //11月
                .dayOfMonth().withMinimumValue() //获取到第一天
                .plusDays(6).dayOfWeek().setCopy("Monday") //先加6天保证横跨一个星期，这样再获取星期一就一定可以取到
                .plusDays(1); //星期一加一天就是星期二

        //计算经过111秒后的时间
        dateTime1.plusSeconds(111);

        //计算5年后的第二个月的最后一天
        nowdate.plusYears(5).monthOfYear().setCopy(2).dayOfMonth().withMaximumValue();

        //使用SimpleDateFormat格式化
        dateTime1.toString("MM/dd/yyyy hh:mm:ss.SSSa");
        dateTime1.toString("dd-MM-yyyy HH:mm:ss");
        dateTime1.toString("EEEE dd MMMM, yyyy HH:mm:ssa");
        dateTime1.toString("MM/dd/yyyy HH:mm ZZZZ");
        dateTime1.toString("MM/dd/yyyy HH:mm Z");



    }
}
