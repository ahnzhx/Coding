	//로그인창 출력	
	function loginshow(){
		$('#login_groupbox').fadeIn('fast');
		$('#login_groupbox>.lgb_middlegroup>.lgb_middlebox>.lgb_radiusbox').animate({width:'565px', height:'408px', opacity: '1.0'},160);
	};
	//로그인창숨기기
	function loginhide(){
		$('#login_groupbox').fadeOut('fast');
		$('#login_groupbox>.lgb_middlegroup>.lgb_middlebox>.lgb_radiusbox').animate({width:'125px', height:'208px', opacity: '0'},160);
		$('#login_groupbox').removeClass().addClass('login_showbox');
	};		
		
	$(function(){
		////Tab button
		$('.lgb_middlebox>.lgb_radiusbox>.lgb_btnbox>li').click(function(){
			var Sel_rel = $(this).attr('rel');
			$('#login_groupbox').removeClass().addClass(Sel_rel)
			if (Sel_rel=='nologin_showbox') {
				$('#login_groupbox>.lgb_middlegroup>.lgb_middlebox>.lgb_radiusbox').css({height:'408px'},40);
			} else {
				$('#login_groupbox>.lgb_middlegroup>.lgb_middlebox>.lgb_radiusbox').css({height:'408px'},40);
			};
		});
		
		//포커스시 안내텍스트 지움
		$('.lgb_radiusbox>div>.lgb_inputbox>ul>li>input').focus(function(){
			$(this).css({'background' : 'none'})
		});
		
		//input창 비어있으면 안내텍스트 띄우기
		$('.lgb_radiusbox>div>.lgb_inputbox>ul>li>input').blur(function(){
		 	if ($(this).val() == "") {
   				$(this).removeAttr('style');
		 	}
		});
		
	});