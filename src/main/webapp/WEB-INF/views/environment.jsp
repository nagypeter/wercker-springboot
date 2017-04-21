<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@page import="java.util.TreeMap"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.management.ManagementFactory"%>
<%@page import="java.lang.management.RuntimeMXBean"%>
<%@page import="java.lang.ClassLoader"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="css/cloud3.css">

<title>Oracle Public Cloud Demo - Runtime Environment Details</title>

</head>
<body>
  <header class="navbar-fixed-top">
    <hgroup class="container">
      <div class="cloudLogo columns">
        <a href='http://cloud.oracle.com' target="_blank"><img
          alt="Oracle Cloud logo" src="images/oracle-cloud-logo.png"
          border="0" /></a>
      </div>

    </hgroup>
  </header>


  <div class="blueBanner">
    <div class="container">

      <div class="blueBannerLogo img-center-align">
        <img src='images/cloudgs_occs.png' alt="" />
      </div>

      <div class="blueBannerHeading">
        <h1 class="blueBannerTitleWithSubtitle">
          <a style="color: #ffffff">Oracle Container Cloud Service</a>&nbsp;+
            <a style="color: #ffffff">Wercker</a>
        </h1>
      </div>

      </div>

      <div class="blueBannerButton"></div>
    </div>
  </div>



  <div class="container serviceContainer" style="margin-top:150px;">
    <div class="overviewLayout">
      <div class="whyOracleVideoSection">
        <div class='overviewDemoSection'>
          <div class="whyOracleListing">
            <div class="whyOracleListingLayout">
              <h3>
                <span style="color: #333; text-decoration: none">Environment Variables</span>
              </h3>
              <table>
                <tr>
                  <th style="text-align: left">Name</th>
                  <th style="text-align: left">Value</th>
                </tr>
                <%
                  TreeMap<String, String> sortedMap = new TreeMap<String, String>();
                  sortedMap.putAll(System.getenv());
                  for (Map.Entry<String, String> f : sortedMap.entrySet()) {
                  out.println("<tr><td><b>");
                    out.println(f.getKey());
                    out.println("</b></td><td>");
                    out.println(f.getValue());
                    out.println("</td></tr>");
                  }
                  RuntimeMXBean runtimeMxBean = ManagementFactory.getRuntimeMXBean();
                  List<String> arguments = runtimeMxBean.getInputArguments();
                  String sJavaagentArg = "-javaagent option was not defined.";
                  for (String argument : arguments) {
                    if (argument.startsWith("-javaagent:")) {
                      sJavaagentArg = argument;
                      break;
                    }
                  }
                  out.println("<tr><td><b>Java Agent</b> (RuntimeMXBean)</td><td>" + sJavaagentArg + "</td></tr>");
                  try {
                    java.lang.reflect.Method m = ClassLoader.class.getDeclaredMethod("findLoadedClass",
                        new Class[] { String.class });
                    m.setAccessible(true);
                    ClassLoader cl = ClassLoader.getSystemClassLoader();
                    Object oAgent = m.invoke(cl, "oracle.apmaas.agent.instrumentation.Agent");
                    out.println("<tr><td><b>oracle.apmaas.agent.instrumentation.Agent</b></td><td>Agent is " + (oAgent != null ? "" : "not") + " loaded.</td></tr>");
                  } catch (Exception e) {
                    e.printStackTrace();
                  }
                %>

              </table>
            </div>
          </div>
          <div class="videoShadow"></div>
        </div>


      </div>
    </div>



  </div>


  <footer>
    <div class="opcGlobalFooter">
      <div class="container">
        <div class="footerLeft columns">
          <ul>
            <li><a href='http://www.oracle.com/corporate/index.html'
              target="_blank">About Oracle</a></li>
            <li><a
              href='http://www.oracle.com/corporate/contact/index.htm'
              target="_blank">Contact Us</a></li>
            <li><a href='http://www.oracle.com/us/legal/index.html'
              target="_blank">Legal Notices</a></li>
            <li><a href='http://www.oracle.com/us/legal/terms/index.html'
              target="_blank">Terms of Use</a></li>
            <li><a
              href='http://www.oracle.com/us/legal/privacy/index.html'
              target="_blank">Your Privacy Rights</a></li>
          </ul>



          <p>Copyright &copy; 2013, 2014 Oracle and/or its affiliates.
            All rights reserved.</p>

        </div>

      </div>
    </div>
  </footer>
</body>
</html>
