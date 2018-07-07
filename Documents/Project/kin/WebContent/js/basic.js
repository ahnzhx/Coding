$(function(){
    // 메인 슬라이드 옵션
    var elem = document.getElementById('mySwipe');
    window.mySwipe = Swipe(elem, {
    });

    //자동 슬라이드
    playAlert = setInterval(function() {
        mySwipe.next();
    }, 3000);
    // 슬라이드에 마우스가 있으면 자동이동 중지/재생
    $('#mySwipe,.slidesjs-next,.slidesjs-previous').hover(function(){
       clearInterval(playAlert);
    },function(){
       playAlert = setInterval(function() {
       mySwipe.next();
       }, 3000);
    });
})
