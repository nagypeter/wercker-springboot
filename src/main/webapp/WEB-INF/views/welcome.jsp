<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="css/cloud3.css">

<title>Oracle Public Cloud Demo</title>

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

      <div class="blueBannerButton"></div>
    </div>
  </div>



  <div class="container serviceContainer" style="margin-top: 150px;">
    <div class="overviewLayout">
      <div>
              <br>SpringBoot application demo. Current server time: <%= new java.util.Date() %> <br>
              <br>
              <p>
                <span style="color: #333; text-decoration: none">Build faster and release often with Wercker's Docker-Native 
          continuous integration platform for developing, building and delivering your applications.</span>
              </p>
              <p>
                <span style="color: #333; text-decoration: none">Configure, deploy, administer, monitor, 
          and orchestrate services (or stacks of services) as Docker containers 
          across multiple hosts and scale them as needed with Oracle Container Cloud Service.</span>
              </p>              
              <div>
                <img max-width="100%" height="auto"
                  src="images/occs.wercker.png"><br>
                  <br>
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
