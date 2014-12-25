KindEditor.plugin("filemanager",function(e){function i(e,i,a){return e+" ("+Math.ceil(i/1024)+"KB, "+a+")"}function a(e,a){a.is_dir?e.attr("title",a.filename):e.attr("title",i(a.filename,a.filesize,a.datetime))}var n=this,l="filemanager",t=e.undef(n.fileManagerJson,n.basePath+"php/file_manager_json.php"),o=n.pluginsPath+l+"/images/",r=n.lang(l+".");n.plugin.filemanagerDialog=function(i){function d(i,a,l){var o="path="+i+"&order="+a+"&dir="+v;_.showLoading(n.lang("ajaxLoading")),e.ajax(e.addParam(t,o+"&"+(new Date).getTime()),function(e){_.hideLoading(),l(e)})}function s(i,a,n,l){var t=e.formatUrl(a.current_url+n.filename,"absolute"),o=encodeURIComponent(a.current_dir_path+n.filename+"/");i.click(n.is_dir?function(){d(o,T.val(),l)}:n.is_photo?function(){g.call(this,t,n.filename)}:function(){g.call(this,t,n.filename)}),I.push(i)}function c(i,a){function n(){"VIEW"==C.val()?d(i.current_dir_path,T.val(),p):d(i.current_dir_path,T.val(),m)}e.each(I,function(){this.unbind()}),y.unbind(),C.unbind(),T.unbind(),i.current_dir_path&&y.click(function(){d(i.moveup_dir_path,T.val(),a)}),C.change(n),T.change(n),w.html("")}function m(i){c(i,m);var a=document.createElement("table");a.className="ke-table",a.cellPadding=0,a.cellSpacing=0,a.border=0,w.append(a);for(var n=i.file_list,l=0,t=n.length;t>l;l++){var d=n[l],p=e(a.insertRow(l));p.mouseover(function(){e(this).addClass("ke-on")}).mouseout(function(){e(this).removeClass("ke-on")});var f=o+(d.is_dir?"folder-16.gif":"file-16.gif"),u=e('<img src="'+f+'" width="16" height="16" alt="'+d.filename+'" align="absmiddle" />'),v=e(p[0].insertCell(0)).addClass("ke-cell ke-name").append(u).append(document.createTextNode(" "+d.filename));!d.is_dir||d.has_file?(p.css("cursor","pointer"),v.attr("title",d.filename),s(v,i,d,m)):v.attr("title",r.emptyFolder),e(p[0].insertCell(1)).addClass("ke-cell ke-size").html(d.is_dir?"-":Math.ceil(d.filesize/1024)+"KB"),e(p[0].insertCell(2)).addClass("ke-cell ke-datetime").html(d.datetime)}}function p(i){c(i,p);for(var n=i.file_list,l=0,t=n.length;t>l;l++){var d=n[l],m=e('<div class="ke-inline-block ke-item"></div>');w.append(m);var f=e('<div class="ke-inline-block ke-photo"></div>').mouseover(function(){e(this).addClass("ke-on")}).mouseout(function(){e(this).removeClass("ke-on")});m.append(f);var u=i.current_url+d.filename,v=d.is_dir?o+"folder-64.gif":d.is_photo?u:o+"file-64.gif",h=e('<img src="'+v+'" width="80" height="80" alt="'+d.filename+'" />');!d.is_dir||d.has_file?(f.css("cursor","pointer"),a(f,d),s(f,i,d,p)):f.attr("title",r.emptyFolder),f.append(h),m.append('<div class="ke-name" title="'+d.filename+'">'+d.filename+"</div>")}}var f=e.undef(i.width,650),u=e.undef(i.height,510),v=e.undef(i.dirName,""),h=e.undef(i.viewType,"VIEW").toUpperCase(),g=i.clickFn,k=['<div style="padding:10px 20px;">','<div class="ke-plugin-filemanager-header">','<div class="ke-left">','<img class="ke-inline-block" name="moveupImg" src="'+o+'go-up.gif" width="16" height="16" border="0" alt="" /> ','<a class="ke-inline-block" name="moveupLink" href="javascript:;">'+r.moveup+"</a>","</div>",'<div class="ke-right">',r.viewType+' <select class="ke-inline-block" name="viewType">','<option value="VIEW">'+r.viewImage+"</option>",'<option value="LIST">'+r.listImage+"</option>","</select> ",r.orderType+' <select class="ke-inline-block" name="orderType">','<option value="NAME">'+r.fileName+"</option>",'<option value="SIZE">'+r.fileSize+"</option>",'<option value="TYPE">'+r.fileType+"</option>","</select>","</div>",'<div class="ke-clearfix"></div>',"</div>",'<div class="ke-plugin-filemanager-body"></div>',"</div>"].join(""),_=n.createDialog({name:l,width:f,height:u,title:n.lang(l),body:k}),b=_.div,w=e(".ke-plugin-filemanager-body",b),y=(e('[name="moveupImg"]',b),e('[name="moveupLink"]',b)),C=(e('[name="viewServer"]',b),e('[name="viewType"]',b)),T=e('[name="orderType"]',b),I=[];return C.val(h),d("",T.val(),"VIEW"==h?p:m),_}});