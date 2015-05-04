package com.qiuxm.myweb.common;

import javax.servlet.http.HttpServletRequest;

/**
 * 通过request获取请求客户端ip地址
 * <功能详细描述>
 *
 * @author hzqiuxm
 */
public class FindclientIP {
    /**
     * 获取请求用户ip地址
     *
     * @param request
     * @return ip地址
     * @throws throws [违例类型] [违例说明]
     * @see [类、类#方法、类#成员]
     */
    public static String getIpAddr(HttpServletRequest request) {

        String ip = request.getHeader("X-Real-IP");

        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            //获取XFF头，格式：X-Forwarded-For:client,proxy1,proxy2......
            ip = request.getHeader("X-Forwarded-For");
            if (ip != null && ip.length() > 0) {
                return ip.split(",")[0];
            }
        }
//        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
//            ip = request.getHeader("WL-Proxy-Client-IP");
//        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }

    /**
     * <默认构造函数>
     */
    public FindclientIP() {

    }
}
