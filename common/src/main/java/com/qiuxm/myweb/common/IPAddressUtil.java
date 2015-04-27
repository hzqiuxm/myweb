/* 
 * Copyright (c) 2010-2020 Founder Ltd. All Rights Reserved. 
 * 
 * This software is the confidential and proprietary information of 
 * Founder. You shall not disclose such Confidential Information 
 * and shall use it only in accordance with the terms of the agreements 
 * you entered into with Founder. 
 * 
 */

package com.qiuxm.myweb.common;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 根据IP 获取IP所属城市
 * @author hzqiuxm
 */
public class IPAddressUtil {
	
	/**
	 * 根据IP 获取IP所属城市
	 * @author hzqiuxm
	 * @param args
	 */
	public static void main(String[] args) {
		String IP = "60.12.249.234";//14.151.136.181 60.12.249.234
//		String strURL = "http://www.ip138.com/ips1388.asp?ip="+IP+"&action=2";
//		String str = getURLContents(strURL);
//		int start = str.indexOf("<li>");
//		int end = str.indexOf("</li>");
//		System.out.println(str.substring(start + 4, end));

		String mac=getMacAddress(IP);
		System.out.println("mac:"+mac);

		String cnt = getIpContents(IP);
		System.out.println("cnt:"+cnt);

	}

	/**
	 *
	 * @param strURL
	 * 访问IP138网站服务获取IP对应地址信息
	 * @return 返回IP对应的省市与运营商信息  如:浙江省杭州市  联通
	 */
	public static String getURLContents(String strURL) {
		StringBuffer sb = new StringBuffer();
		try {
			URL url = new URL(strURL);
			URLConnection connection = url.openConnection();
			HttpURLConnection httpConn = (HttpURLConnection) connection;
			System.setProperty("sun.net.client.defaultConnectTimeout", "150000");
			System.setProperty("sun.net.client.defaultReadTimeout", "150000");
			httpConn.setRequestMethod("GET");// 设置请求为POST方法
			connection.setDoOutput(true);// 可以输出
			InputStreamReader isr = new InputStreamReader(
					httpConn.getInputStream(), "GBK");
			BufferedReader br = new BufferedReader(isr);
			String temp;
			while ((temp = br.readLine()) != null) {
				temp = temp.trim();
				if (temp != null && temp.length() > 0) {
					sb.append(temp);
				}
			}
			br.close();
			isr.close();
		} catch (Exception e) {
			System.out.println("Error 1" + e.getMessage());
		}
		return sb.toString();
	}


	/**
	 * 根据传入的IP地址返回IP对应的省市与运营商信息  如:浙江省杭州市  联通
	 * @param IP
	 * @return
	 */
	public static  String getIpContents(String IP){

		String strURL = "http://www.ip138.com/ips1388.asp?ip="+IP+"&action=2";
		String str = getURLContents(strURL);
		int start = str.indexOf("<li>");
		int end = str.indexOf("</li>");
		return (str.substring(start + 10, end));
	}

	/**
	 *
	 * @param ip
	 * @return 返回mac地址
	 */
	public static String getMacAddress(String ip){

		String macAddress = "";
		macAddress = getMacInWindows(ip).trim();
		if(macAddress==null||"".equals(macAddress)){
			macAddress = getMacInLinux(ip).trim();
		}
		return macAddress;
	}

	public static String getMacInWindows(final String ip){
		String result = "";
		String[] cmd = {"cmd","/c","ping " + ip};
		String[] another = {"cmd","/c","arp -a"};
		String cmdResult = callCmd(another);
		result = filterMacAddress(ip,cmdResult,"-");
		return result;
	}

	public static String getMacInLinux(final String ip){
		String result = "";
		String[] cmd = {"/bin/sh","-c","ping " +  ip + " -c 2 && arp -a" };
		String cmdResult = callCmd(cmd);
		result = filterMacAddress(ip,cmdResult,":");
		return result;
	}

	public static String filterMacAddress(final String ip, final String sourceString,final String macSeparator) {
		String result = "";
		String regExp = "((([0-9,A-F,a-f]{1,2}" + macSeparator + "){1,5})[0-9,A-F,a-f]{1,2})";
		Pattern pattern = Pattern.compile(regExp);
		Matcher matcher = pattern.matcher(sourceString);
		while(matcher.find()){
			result = matcher.group(1);
			if(sourceString.indexOf(ip) <= sourceString.lastIndexOf(matcher.group(1))) {
				break; // 如果有多个IP,只匹配本IP对应的Mac.
			}
		}
		return result;
	}

	public static String callCmd(String[] cmd) {
		String result = "";
		String line = "";
		try {
			Process proc = Runtime.getRuntime().exec(cmd);
			InputStreamReader is = new InputStreamReader(proc.getInputStream());
			BufferedReader br = new BufferedReader (is);
			while ((line = br.readLine ()) != null) {
				result += line;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}




}
