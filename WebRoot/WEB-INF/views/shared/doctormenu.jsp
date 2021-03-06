<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String doctorMenuPath = request.getContextPath();
String baseDoctorMenuPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+doctorMenuPath+"/";
%>

<!-- #section:basics/side bar -->
<div class="sidebar-shortcuts" id="sidebar-shortcuts">
	<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
		<button class="btn btn-success">
			<i class="ace-icon fa fa-signal"></i>
		</button>

		<button class="btn btn-info">
			<i class="ace-icon fa fa-pencil"></i>
		</button>

		<!-- #section:basics/sidebar.layout.shortcuts -->
		<button class="btn btn-warning">
			<i class="ace-icon fa fa-users"></i>
		</button>

		<button class="btn btn-danger">
			<i class="ace-icon fa fa-cogs"></i>
		</button>

		<!-- /section:basics/sidebar.layout.shortcuts -->
	</div>

	<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
		<span class="btn btn-success"></span>

		<span class="btn btn-info"></span>

		<span class="btn btn-warning"></span>

		<span class="btn btn-danger"></span>
	</div>
</div><!-- /.sidebar-shortcuts -->

<ul class="nav nav-list" id="menu">

	<li class="">
		<a href="<%=doctorMenuPath%>/home/userindex">
			<i class="menu-icon fa fa-home"></i>
			<span class="menu-text"> 首页 </span>
		</a>
		<b class="arrow"></b>
	</li>

	<li class="">
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-list-ul"></i>
			<span class="menu-text">健康数据</span>
			<b class="arrow fa fa-angle-down"></b>
		</a>
		
		<b class="arrow"></b>
		<ul class="submenu">
			<li class="">
				<a href="<%=doctorMenuPath%>/drdatamgmt/electrocardiogram">
					<i class="menu-icon fa fa-caret-right"></i>
					心电数据
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/drdatamgmt/bloodoxygen">
					<i class="menu-icon fa fa-caret-right"></i>
					血氧数据
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/drdatamgmt/bloodpressure">
					<i class="menu-icon fa fa-caret-right"></i>
					血压数据
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/drdatamgmt/bloodglucose">
					<i class="menu-icon fa fa-caret-right"></i>
					血糖数据
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	
	
	<li class="">
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-list-ul"></i>
			<span class="menu-text">健康服务</span>
			<b class="arrow fa fa-angle-down"></b>
		</a>
		
		<b class="arrow"></b>
		<ul class="submenu">
			<li class="">
				<a href="<%=doctorMenuPath%>/test/chat">
					<i class="menu-icon fa fa-caret-right"></i>
					健康咨询
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/test/advice">
					<i class="menu-icon fa fa-caret-right"></i>
					健康建议
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	
	<li class="">
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-user"></i>
			<span class="menu-text">信息管理</span>
			<b class="arrow fa fa-angle-down"></b>
		</a>
		
		<b class="arrow"></b>
		<ul class="submenu">
			<li class="">
				<a href="<%=doctorMenuPath%>/drinfomgmt/index">
					<i class="menu-icon fa fa-caret-right"></i>
					个人资料
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/drinfomgmt/mypatient">
					<i class="menu-icon fa fa-caret-right"></i>
					我的客户
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	
	<li class="">
		<a href="#" class="dropdown-toggle">
			<i class="menu-icon fa fa-gear"></i>
			<span class="menu-text">系统管理</span>
			<b class="arrow fa fa-angle-down"></b>
		</a>
		
		<b class="arrow"></b>
		<ul class="submenu">
			<li class="">
				<a href="<%=doctorMenuPath%>/usermanage/userindex">
					<i class="menu-icon fa fa-caret-right"></i>
					修改密码
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/usermanage/addfamily">
					<i class="menu-icon fa fa-caret-right"></i>
					系统公告
				</a>
				<b class="arrow"></b>
			</li>
			<li class="">
				<a href="<%=doctorMenuPath%>/account/login">
					<i class="menu-icon fa fa-power-off"></i>
					<span class="menu-text">退出登录</span>
				</a>
				<b class="arrow"></b>
			</li>
		</ul>
	</li>
	
</ul><!-- /.nav-list -->

<!-- #section:basics/sidebar.layout.minimize -->
<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
	<i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
</div>

<script type="text/javascript">
	
	// 菜单定位
    var pathname = window.location.pathname;
	$("li a").each(function() {
		var href = $(this).attr("href");
		if(pathname == href){
			$(this).parents("ul").parent("li").addClass("active open");
			$(this).parent("li").addClass("active");
		}
	});

</script>
