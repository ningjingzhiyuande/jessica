!function(s){s.fn.superfish=function(a){var i=s.fn.superfish,o=i.c,n=s(['<span class="',o.arrowClass,'"> &#187;</span>'].join("")),e=function(){var a=s(this),i=l(a);clearTimeout(i.sfTimer),a.showSuperfishUl().siblings().hideSuperfishUl()},t=function(){var a=s(this),o=l(a),n=i.op;clearTimeout(o.sfTimer),o.sfTimer=setTimeout(function(){n.retainPath=s.inArray(a[0],n.$path)>-1,a.hideSuperfishUl(),n.$path.length&&a.parents(["li.",n.hoverClass].join("")).length<1&&e.call(n.$path)},n.delay)},l=function(s){var a=s.parents(["ul.",o.menuClass,":first"].join(""))[0];return i.op=i.o[a.serial],a},r=function(s){s.addClass(o.anchorClass).append(n.clone())};return this.each(function(){var n=this.serial=i.o.length,l=s.extend({},i.defaults,a);l.$path=s("li."+l.pathClass,this).slice(0,l.pathLevels).each(function(){s(this).addClass([l.hoverClass,o.bcClass].join(" ")).filter("li:has(ul)").removeClass(l.pathClass)}),i.o[n]=i.op=l,s("li:has(ul)",this)[s.fn.hoverIntent&&!l.disableHI?"hoverIntent":"hover"](e,t).each(function(){l.autoArrows&&r(s(">a:first-child",this))}).not("."+o.bcClass).hideSuperfishUl();var h=s("a",this);h.each(function(s){var a=h.eq(s).parents("li");h.eq(s).focus(function(){e.call(a)}).blur(function(){t.call(a)})}),l.onInit.call(this)}).each(function(){var a=[o.menuClass];!i.op.dropShadows||s.browser.msie&&s.browser.version<7||a.push(o.shadowClass),s(this).addClass(a.join(" "))})};var a=s.fn.superfish;a.o=[],a.op={},a.IE7fix=function(){var i=a.op;s.browser.msie&&s.browser.version>6&&i.dropShadows&&void 0!=i.animation.opacity&&this.toggleClass(a.c.shadowClass+"-off")},a.c={bcClass:"sf-breadcrumb",menuClass:"sf-js-enabled",anchorClass:"sf-with-ul",arrowClass:"ui-icon-carat-1-s ui-icon",shadowClass:"sf-shadow"},a.defaults={hoverClass:"sfHover",pathClass:"overideThisToUse",pathLevels:1,delay:200,animation:{opacity:"show"},speed:"fast",autoArrows:!0,dropShadows:!0,disableHI:!1,onInit:function(){},onBeforeShow:function(){},onShow:function(){},onHide:function(){}},s.fn.extend({hideSuperfishUl:function(){var i=a.op,o=i.retainPath===!0?i.$path:"";i.retainPath=!1;var n=s(["li.",i.hoverClass].join(""),this).add(this).not(o).removeClass(i.hoverClass).find(">ul").hide().css("visibility","hidden");return i.onHide.call(n),this},showSuperfishUl:function(){var s=a.op,i=(a.c.shadowClass+"-off",this.addClass(s.hoverClass).find(">ul:hidden").css("visibility","visible"));return a.IE7fix.call(i),s.onBeforeShow.call(i),i.animate(s.animation,s.speed,function(){a.IE7fix.call(i),s.onShow.call(i)}),this}})}(jQuery);