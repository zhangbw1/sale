<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src='${pageContext.request.contextPath}/js/jquery-1.7.2.min.js'></script>
<script type="text/javascript">
	
	function get_sku_by_attr_value(){
		// 获取排序参数
		var order_by = $("#order_by").val();
		
		// 声明查询字符串
		var dataString="";
		
		// 获得页面保存的属性值id和属性名id集合，分类边号2
		var attr_var_id_array = $("input[name='attr_id']");
		
		// 获得属性属性值的json字符串
		$(attr_var_id_array).each(function(i,json_str){
			//解析json字符串，编程js对象
			var object_json = $.parseJSON(json_str.value);
			dataString = dataString+"list_attr_value["+i+"].shxm_id="+object_json.shxm_id+"&";
			dataString = dataString+"list_attr_value["+i+"].shxzh_id="+object_json.shxzh_id+"&";	
		});

		dataString=dataString+"flbh2="+${flbh2}+"&flmch2=${flmch2}&order_by="+order_by;
		
		// 此处可以用jquery的表单序列化将，表单对象转化成一个序列化文本字符串提交到后台
		// var seri = $("#form").serialize();

		// 异步提交ajax请求
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/get_sku_by_flbh2_attr_value.do",
			data:dataString,
			success:function(data){
				$("#list_sku_page").html(data);
			}
		});
		
	}
	
	function attr_value_rm(list_attr_attr_id){
		// 在页面上删除属性值和值名
		$("#a_"+list_attr_attr_id).remove();
		$("#list_attr_"+list_attr_attr_id).show();
		
		// 在页面上删除隐藏于保存，属性值和对应的属性名id
		$("#hidden_attr_"+list_attr_attr_id).remove();
		
		// 调用ajax后台访问sku检索方法(根据属性值id和属性名id)
		get_sku_by_attr_value();
	}

	function attr_value_add(show_attr_value,attr_id,value_id){
		// 在页面上添加属性值和值名
		$("#show_attr_value").append("<a id='a_"+attr_id+"' href='javascript:attr_value_rm("+attr_id+");'>"+show_attr_value+"</a>");
		$("#list_attr_"+attr_id).hide();
		
		// 在页面上添加隐藏域保存，属性值和对应的属性名id
		$("#show_attr_value").append("<input id='hidden_attr_"+attr_id+"' type='hidden' name='attr_id' value='{\"shxm_id\":"+attr_id+",\"shxzh_id\":"+value_id+"}'/>");
		
		// 调用ajax后台访问sku检索方法(根据属性值id和属性名id)
		get_sku_by_attr_value();
	}
	
	function change_order(order){
		//改变页面的order值
		if($("#order_by").val()==order){
			$("#order_by").val(order+" desc");
		}else{
			$("#order_by").val(order);
		}
		//调用ajax后台访问sku检索方法
		get_sku_by_attr_value();
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>mall_search_class.jsp</title>
</head>
<body>
	
	mall_search_class.jsp
	分类检索${flmch2}<br>
	<%-- <%@include file="" %> --%>
	<jsp:include page="mall_miniCar.jsp"></jsp:include>
	
	<div id="show_attr_value" >
	</div>
	<input type="hidden" value="order by jg" id="order_by"/>
	<hr>
	
	
	<c:forEach items="${list_attr}" var="attr">
		<div style="float:left;" id="list_attr_${attr.id}">
			${attr.shxm_mch}:
			<c:forEach items="${attr.lvalue}" var="value">
				<a href="javascript:attr_value_add('${value.shxzh}${value.shxzh_mch}',${attr.id},${value.id});">${value.shxzh}${value.shxzh_mch}</a>
			</c:forEach>
		</div>
		<br>
	</c:forEach>
	<hr>
	           检索条件：
		<a href="javascript:change_order('order by jg');">价格</a>    
		<a href="javascript:change_order('order by kc');">库存</a>     
	<hr>
	<div id="list_sku_page">
		<c:forEach items="${list_sku}" var="sku">
			<img src="${pageContext.request.contextPath}/upload/${sku.product.shp_tp}" width="100px"/>
			<a href="${pageContext.request.contextPath}/get_object_sku_by_shp_id_sku_id/${sku.id}/${sku.shp_id}.do">${sku.sku_mch}</a><br>
		</c:forEach>
	</div>

	
</body>
</html>