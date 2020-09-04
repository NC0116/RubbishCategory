<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="google-site-verification" content="7bHGiWO9BqIdE29U8irujJwHqSV1g9z8dHpMDYmPtFA" />
<meta name="description" content="在线垃圾分类查询, 垃圾分类查询, 垃圾分类, 帮助你将垃圾放到正确到地方, 解决你因垃圾分类产生的烦恼">
<meta name="keywords" content="垃圾分类查询,垃圾分类,生活垃圾分类,垃圾分类">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>垃圾分类查询 - 垃圾分类</title>
<link rel="stylesheet" type="text/css" href="../resources/home/css/common.css" />
<link rel="stylesheet" type="text/css" href="../resources/home/css/bootstrap.min.css" />
</head>
<body style="background-color:#80FFFF">
<script>
  function subsearch() {
    window.location.href="search?k="+document.forms["form"]["inputv"].value
    return false;
  }
</script>

<div class="container">


<div class="row">
  <div class="col-md-4 col-xs-2" style="padding-right: 0px">
  <img src="../resources/home/images/favicon.png" class="img-responsive center-block" width="50px" style="margin-right: 0px;padding-top: 6px"></div>
  <div class="col-md-8 col-xs-8" style="padding-left: 0px"><h1>垃圾分类查询</h1><div style="font-size: 8px;color: red;"></div></div>
</div>
<br>

<form action="/sk" method="get" onsubmit="return subsearch()" id="form">
  <div class="col-md-1"></div>
  <div class="input-group col-md-9">
  <input name="URLz" class="form-control input-lg" placeholder="请输入关键字" type="text" id="inputv" />
  <span class="input-group-btn"><button class="btn btn-primary input-lg" type="submit"><strong><span class="glyphicon glyphicon-search" aria-hidden="true"></span> 查询</strong></button></span>
  </div>
  </form>
<br>
<div class="row">
<div class="col-md-1 col-xs-0"></div> 
  <div class="col-md-9 col-xs-12">
    <div class="row"><span style="font-size: 20px;padding-left: 10px">日常生活垃圾分为四类</span> </div>
    <br>
    <div class="row"> 
      <div class="col-md-6 col-xs-12"> 
        <div class="row"> 
          <div class="col-md-3 col-xs-3"> 
            <img style="max-width: 100px;" alt="可回收垃圾" src="../resources/home/images/t5.png"> 
          </div> 
          <div class="col-md-9 col-xs-9" style="color: #653F34;padding-left: 22px;"> 
            <h3 style="color: #00457C;margin-top: 0px">可回收物是指：</h3> 
            <p style="color: #00457C"> 废纸、废塑料、废玻璃制品、废金属、废织物等适宜回收，并且可以回收重复利用的生活废弃物。</p> 
          </div> 
        </div> 
      </div> 
      <div class="col-md-6 col-xs-12"> 
        <div class="row">
          <div class="col-md-3 col-xs-3" style="color: #653F34"> 
            <img style="max-width: 100px;" alt="有害垃圾" src="../resources/home/images/t4.png"> 
          </div> 
          <div class="col-md-9 col-xs-9" style="padding-left: 22px;"> 
            <h3  style="margin-top: 0px;color:#FF5722">有害垃圾是指：</h3> 
            <p style="color:#FF5722">废电池、费灯泡灯管、废药品、废油漆，以及有损人身体健康或者对环境直接或者间接会造成污染，有潜在危害的生活用品。</p> 
          </div> 
        </div>
      </div> 
    </div> 


    <div class="row"> 
      <div class="col-md-6 col-xs-12"> 
        <div class="row"> 
          <div class="col-md-3 col-xs-3"> 
            <img style="max-width: 100px;" alt="湿垃圾" src="../resources/home/images/t3.png"> 
          </div> 
          <div class="col-md-9 col-xs-9" style="color: #653F34;padding-left: 22px;"> 
            <h3 style="color: #653F34;margin-top: 0px">湿垃圾是指：</h3> 
            <p>易腐垃圾，如食材废弃料、剩饭剩菜、过期食品、水果皮、干果垃圾，废弃植物、中药残渣等生活废弃物品。</p> 
            <p>如：剩菜剩饭、瓜皮果核、花卉绿植、过期食品等。</p> 
          </div> 
        </div> 
      </div> 
      <div class="col-md-6 col-xs-12"> 
        <div class="row">
          <div class="col-md-3 col-xs-3"> 
            <img style="max-width: 100px;" alt="干垃圾" src="../resources/home/images/t2.png"> 
          </div> 
          <div class="col-md-9 col-xs-9" style="color: #2A2925;padding-left: 22px;"> 
            <h3 style="color: #2A2925;margin-top: 0px">干垃圾是指：</h3> 
            <p>就是生活中的其它垃圾，并且不属于“湿垃圾”、“有害垃圾”、“可回收垃圾”的垃圾分类，也叫其它垃圾。</p> 
          </div> 
        </div>
      </div> 
    </div> 
  </div>
</div>
</div>
<div class="row">
  <div class="col-md-1 col-cs-0"></div>
  <div class="col-md-9 col-xs-12" style="font-size: normal;color: #787878;"><p>鼓励将可回收物卖入废品回收系统，或交投至两融合服务点，或投放至可回收物收集容器；<br>严禁将有害垃圾投放到其他的生活垃圾收集容器；<br>日常家庭生活垃圾要做到干、湿垃圾两分开。</p></div>
</div>


<hr style="margin:5px">
<footer class="bs-docs-footer">

  <div class="container">
    <div class="row">
      <div class="col-md-1 col-xs-0"></div>
      <div class="col-md-9 col-xs-12" style="color:#787878">
       友情链接:
        <a href="http://www.lntu.edu.cn/">辽工大官网</a>
      </div>
    </div>
    <div class="row">
      <div class="col-md-1 col-xs-0"></div>
      <div class="col-md-9 col-xs-12">
        
      </div>
    </div>
  </div>
</footer>
<script>
</script>
</body>
</html>