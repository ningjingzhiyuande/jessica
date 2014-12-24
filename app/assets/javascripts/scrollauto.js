$(document).ready(function(e){
	function navbkadd(i){
			$("#nav>li").removeClass("current").eq(i).addClass("current");	
			
		}
		function ckickgo(nodename){
			
		 $("html,body").animate({scrollTop:$(nodename).offset().top-70},1000)
			
		}
				
				
		$(window).scroll(function(){		
             var scrolltop=$(window).scrollTop()
              if($("#banner").offset().top-scrolltop<10){
              	navbkadd(0)
              }
              if($(".park01").offset().top-scrolltop<80){
              	navbkadd(1)
              	
              }
             if($(".new_park02").offset().top-scrolltop<80){
             	navbkadd(2) 	
             }
               if($(".park_gg").offset().top-scrolltop<80){
             	navbkadd(3) 	
             }
              if($(".new_park04").offset().top-scrolltop<80){
             	navbkadd(4) 	
             }
               if($(".park05").offset().top-scrolltop<80){
             	navbkadd(5) 	
             }
		   })
			$("#nav>li").click( function(){
				
				var i=$(this).index()
				var scrolltop=$(window).scrollTop()
				switch (i){
					case 0:
					//alert(i)
				  ckickgo("#banner")
					break;
					case 1:
					ckickgo(".park01")
					break;
					case 2:
					ckickgo(".park02")
					break;
					case 3:
					ckickgo(".park03")
					break;
					case 4:
					ckickgo(".park04")
					break;
					case 5:
					ckickgo(".park05")
					break;
					
				}
				
			})
		})	