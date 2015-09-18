$(document).ready(function(){

    $(".btn_hide, .btn_show").click(function(){
    	if($(this).attr('class') == 'btn_hide'){				
	        $(".viewbanner").slideToggle("slow");
	        $(".viewshow").slideToggle("slow");
    	}else{
    		$(".viewshow").slideToggle("slow");
	        $(".viewbanner").slideToggle("slow");
    	}
    });

});

