/*별점 : .review_star*/
/*출처 : http://codepen.io/naradesign/pen/zxPbOw*/
var starRating = function(){
var $star = $(".review_star"),
    $result = $star.find("output>b");
	
  	$(document)
	.on("focusin", ".review_star>.input", 
		function(){
   		 $(this).addClass("focus");
 	})
		 
   	.on("focusout", ".review_star>.input", function(){
    	var $this = $(this);
    	setTimeout(function(){
      		if($this.find(":focus").length === 0){
       			$this.removeClass("focus");
     	 	}
   		}, 100);
 	 })
  
    .on("change", ".review_star :radio", function(){
    	$result.text($(this).next().text());
  	})
    .on("mouseover", ".review_star label", function(){
    	$result.text($(this).text());
    })
    .on("mouseleave", ".review_star>.input", function(){
    	var $checked = $star.find(":checked");
    		if($checked.length === 0){
     	 		$result.text("0");
   		 	} else {
     	 		$result.text($checked.next().text());
    		}
  	});
};

starRating();