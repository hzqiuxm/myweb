/**
 * Created by yeoman on 2014/12/3.
 */
jQuery(function($){
    'use strict';

    var mo = {
        myEditor:UE.getEditor('editor'),
        init: function(){
        	//给编辑器注册，并在初始化时，设置编辑区样式
            mo.myEditor.ready(function() {
                $(mo.myEditor.body).css("padding","16px 34px");
                if($("#cid").val()){
                	$("#titInput").val($("#ctit").val());
                	mo.myEditor.setContent($("#ccont").text());
                	$("#partNum option[value='"+$("#partNum").attr("dir")+"']").attr("selected",true);
                	mo.upHNode(1);
                    mo.upCatalogue();
                }
            });
            mo.bindOptionEvents();
        },
        //更新H标签的name属性
        upHNode : function(n){
            var hNodes = $(mo.myEditor.body).find("h"+n);
            if(hNodes.length > 0){
            	var m = 0;
            	var maxM = '0';
            	var unNameNodes = [];
            	$(hNodes).each(function(){
            		if($(this).attr("name")){
            			if($(this).attr("name").localeCompare(maxM)){
            				maxM = $(this).attr("name");
            			}
            		}else{
            			unNameNodes.push(this);
            		}
            	});
            	if(unNameNodes.length > 0){
            		if(maxM.localeCompare('0')){
            			var maxMarr = maxM.split("_");
            			m = parseInt(maxMarr[maxMarr.length-1]);
            		}
            		$(unNameNodes).each(function(){
            			m++;
            			$(this).attr("name","h_"+n+"_"+m);
            		});
            	}
            }
            if(n < 6){
                mo.upHNode(n+1);
            }
        },
        //更新目录
        upCatalogue : function(){
            $("#treeUl").empty();
            var hNodes = $(mo.myEditor.body).find("[name^='h_']");
            var uHNodes = [];
            var flag = false;
            $(hNodes).each(function(){
            	//查找元素在数组中的位置，不存在时返回－1
            	if($.inArray($(this).attr("name"),uHNodes) != -1){
            		$(this).removeAttr("name");
            		flag = true;
            	}else{
            		uHNodes.push($(this).attr("name"));
            	}
            });
            if(flag){
            	mo.upHNode(1);
            	hNodes = $(mo.myEditor.body).find("[name^='h_']");
            }
            $(hNodes).each(function(){
                if("H" === this.tagName.charAt(0)){
                    var hn = parseInt(this.tagName.charAt(1));
                    var text = $.trim($(this).text());
                    //根据几级标题计算列表缩进位
                    if(text.length > 15-hn){
                        text = text.substr(0,15-hn) + "…";
                    }
                    $("#treeUl").append("<li class='h"+hn+"-spac' name='"+$(this).attr("name")+"'>"+text+"</li>");
                }
            });
        },
        bindOptionEvents: function() {
            //给合同标题输入框注册获得和失去焦点事件
            $("#titInput").focus(function(){
                $(this).css("color", "black");
                if($(this).val() === this.defaultValue){
                    $(this).val("");
                }
            });
            $("#titInput").blur(function(){
                if(!$.trim($(this).val())){
                    $(this).val(this.defaultValue);
                    $(this).css("color", "#999");
                    $(".promp-li").css("display","none");
                }
            });
            //给目录注册鼠标进入事件，以更新目录
            $(".cata-li").mouseenter(function () {
                mo.upHNode(1);
                mo.upCatalogue();
            });
            //给目录注册鼠标点击事件，以实现定位跳转
            $(".cata-li").click(function (event) {
                var name = $(event.target).attr("name");
                $(mo.myEditor.body).find("[name='" + name + "']").each(function () {
                    this.scrollIntoView(true);
                    if (UE.browser.ie) {
                        //IE8浏览器IE 8以上时
                        if (UE.browser.version > 8) {
                            var uer = mo.myEditor.selection.getRange();//获取当前选区
                            uer.selectNode(this);//选中指定元素
                            uer.setEnd(this, 0);//设置选区结束位置
                            uer.setCursor(true);//关闭选区，并定位光标到选区后的位置
                            mo.myEditor.selection.clearRange();//清除选区
                        }
                    }
                    return false;
                });
            });
            //给保存菜单注册鼠标点击事件，以实现保存合同的功能
            $("#save-li").click(function () {
                $(".promp-li").text("");
                var titInput = document.getElementById("titInput");
                var cTitle = $.trim($(titInput).val());
                if (cTitle === titInput.defaultValue) {
                    $(".promp-li").text("* 合同标题不能为空！");
                    $(".promp-li").css("display", "block");
                    return false;
                }
                if (mo.myEditor.hasContents()) {
                    var cContent = $.trim(mo.myEditor.body.innerHTML);
                    $("#ctit").val(cTitle);
                    $("#ccont").text(cContent);
                    $.ajax({
            			type : "POST",
            			url : "contractEdit",
            			data : {"id":$("#cid").val(),"title":cTitle,"content":cContent},
            			success : function(result) {
//console.log("result:"+JSON.stringify(result));
            				if (result.success) {
            					alert("保存成功！");
            					if(!$("#cid").val()){
            						$("#cid").val(result.id);
            					}
            				} else {
            					alert(result.msg);
            				}
            			}
            		});
                } else {
                    $(".promp-li").text("* 合同内容不能为空！");
                    $(".promp-li").css("display", "block");
                    return false;
                }
            });
        }
    };
    mo.init();
});
