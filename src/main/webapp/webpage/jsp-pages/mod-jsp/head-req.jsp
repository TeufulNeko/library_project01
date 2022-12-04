<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<% 
    String path=request.getContextPath();
    String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ path +"/";
    boolean superuser=(boolean)session.getAttribute("superuser");

    String str1=basePath+"webpage/jsp-pages/page-jsp/usermanage/usermanagepage.jsp";
    String str2=basePath+"webpage/jsp-pages/page-jsp/bookmanagepage/bookmanagepage.jsp";
    String str3=basePath+"webpage/jsp-pages/page-jsp/booklogmanagepage/booklogmanagepage.jsp";

 %>
 
<div class="head">
    <!-- 头部导航栏+标题栏 -->
    <div class="banner">
        <div class="bannerboard">图书馆管理系统</div>
        <div class="nav">
            <ul>
                <li><a href="<%=basePath%>webpage/jsp-pages/page-jsp/homepage/homepage.jsp">个人主页</a></li>
                <li><a href="<%=basePath%>webpage/jsp-pages/page-jsp/searchbookpage/searchbook.jsp">借阅查询</a></li>
                <li><a href="<%=basePath%>webpage/jsp-pages/page-jsp/borrowpage/borrowpage.jsp">借阅申请</a></li>
                <li><a href="<%=basePath%>webpage/jsp-pages/page-jsp/receivepage/receivepage.jsp">还书申请</a></li>
                <%if(superuser==true){
                    out.write("<li><a href=\""+str1+"\">用户管理</a></li>");
                    out.write("<li><a href=\""+str2+"\">书籍管理</a></li>");
                    out.write("<li><a href=\""+str3+"\">日志修改</a></li>");
                }%>
                <li><a href="#">个人资料</a></li>

            </ul>
        </div>
    </div>
</div>
