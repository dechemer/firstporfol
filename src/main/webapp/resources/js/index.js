$(document).ready(function(){
    //vButtonAttr() : 동영상종료시 재생/일시정지버튼 변경함수
    //slidePrev(), slideNext() : 동영상 슬라이드 이전버튼, 다음버튼 함수

    //슬라이드 위치 변수 초기화
    let position=0;

    //카운트 변수 초기화
    let count=0;
   
    //영화메뉴
    $(".movieMenu").hide();
    $(".movie").on("mouseover",function(){
        $(".movieMenu").show();
    })

    $(".movieMenu").on("mouseout",function(){
        $(".movieMenu").hide();
    })

    //동영상 포스터와 줄거리 버튼
    // setTimeout(function(){
    //     $(".movieText").css({
    //         "display":"none"
    //     })
    //     $(".moviePoster").animate({
    //         "top":400,
    //         "opacity":0.5
    //     },500)
    //     $(".mainBtn").animate({
    //         "opacity":0.7 
    //     },500)
    // }, 5000);


    //재생/일시정지버튼
    $(".videoPlay").on("click",function(){
        if($(".mainVideo").get(0).paused){
            $(".mainVideo").get(0).play();    
            $(".videoPlay img").attr("src","./resources/image/icon/pause.png").attr("alt","일시정지");
            //$(".videoPlay img").animate({},10000,function(){
             //   $(this).attr("src","./icon/pause.png")
            //})
        }else{
            $(".mainVideo").get(0).pause();
            $(".videoPlay img").attr("src","./resources/image/icon/play.png").attr("alt","재생");
            // $(".videoPlay img").animate({},10000,function(){
            //     $(this).attr("src","./icon/play.png")
            // })
        }
    })

    //사운드버튼
    $(".videoSound").on("click",function(){
        if($(".mainSilde video").prop("muted")){
            $(".mainSilde video").prop("muted",false);
            $(".videoSound img").attr("src","./resources/image/icon/sound.png");
        }else{
            $(".mainSilde video").prop("muted",true);
            $(".videoSound img").attr("src","./resources/image/icon/mute.png");
        }
    })

    //동영상종료후 일시정지이미지 변경
    vButtonAttr();

    //메인이전버튼
    $(".mainPrev").on("click",function(){
        slidePrev();
        //$(".mainSilde li").not(".on").addClass("off");
        // $(".mainSilde video").not(".mainVideo").get(0).pause();
        // $(".mainSilde .off video").get(0).pause();
        $(".videoPlay img").attr("src","./resources/image/icon/pause.png");
        vButtonAttr();
    })

    //메인다음버튼
    $(".mainNext").on("click",function next(){
        slideNext();
        //$(".mainSilde li").not(".on").addClass("off");
        // $(".mainSilde video").not(".mainVideo").get(0).pause();
        // $(".mainSilde .off video").get(0).pause();
        $(".videoPlay img").attr("src","./resources/image/icon/pause.png");
        vButtonAttr();
        
    })

    //현재상영작 버튼
    $(".presentBtn").on("click",function(){
        $(".category a").removeClass("on");
        $(this).addClass("on");

        $(".scheduled").css({
            "display":"none"
        })
        $(".boxoffice").css({
            "display":"none"
        })
        $(".present").css({
            "display":"block"
        })
        $(".movieChart .list").css({
            "transform": "translate3d(0px, 0px, 0px)"
            // "transition-duration": "0.5s"
        })
        position=0;
        count=0;
        prevHide();
    })

    //상영예정작 버튼 
    $(".scheduledBtn").on("click",function(){
        let select=$(".catagory li")
    
        $(".category a").removeClass("on");
        $(this).addClass("on");
        $(".present").css({
            "display":"none"
        })
        $(".boxoffice").css({
            "display":"none"
        })
        $(".scheduled").css({
            "display":"block"
        })
        $(".movieChart .list").css({
            "transform": "translate3d(0px, 0px, 0px)"
            // "transition-duration": "0.5s"
        })
        position=0;
        count=0;
        prevHide();
    })

    //박스오피스 버튼
    $(".boxofficeBtn").on("click",function(){
        $(".category a").removeClass("on");
        $(this).addClass("on");

        $(".present").css({
            "display":"none"
        })
        $(".scheduled").css({
            "display":"none"
        })
        $(".boxoffice").css({
            "display":"block"
        })
        
        $(".movieChart .list").css({
            "transform": "translate3d(0px, 0px, 0px)"
            // "transition-duration": "0.5s"
        })
        position=0;
        count=0;
        prevHide();
    })

    //상영작 이전버튼
    $(".chartPrev").hide();
    $(".chartPrev").on("click",function(){
        chartPrev();
        count--;
        if(count==0){
            $(this).hide();
            $(".chartNext").show();   
        }
    })
    
    //상영작 다음버튼
    $(".chartNext").on("click",function(){
        chartNext();
        count++;
        if(count>=1){
            $(this).hide();
            $(".chartPrev").show();
        }
    })

    //상세정보, 예매하기버튼
    $(".info").hide();

    $(".chart").on("mouseover",function(){
        //find(태그):자식불러오기
        $(this).find(".info").show()
                
        //attr("속성", "변경할속성값"):속성값 불러오기 및 변경
        $(".oneImg img").attr("src",$(this).find("img").attr("src"))
        .attr("alt",$(this).find("img").attr("alt"))
    })

    
   

    $(".chart").on("mouseout",function(){
        $(this).find(".info").hide();
    })
    
    //이벤트리스트 slick
    $('.evListIn').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
    })

    //상영작 슬라이드 버튼 초기화
    function prevHide(){
        if(count==0){
            $(".chartPrev").hide();
            $(".chartNext").show();   
        }
    }

    
    //메인슬라이드 이전버튼 함수
    function slidePrev(){
        let $select=$(".mainSilde li.on").index();
        let $prevSelect=$select-1;
        let $left=$(".mainSilde li.on").width()*-1;

        $(".mainSilde li").removeClass("on");
        $(".mainSilde li").removeClass("off");
        $(".mainSilde video").removeClass("mainVideo");
        $(".mainSilde li").eq($select).css({
            "z-index":3
        })
        $(".mainSilde li").eq($select).find("video").get(0).pause();
        
        $(".mainSilde video").eq($prevSelect).addClass("mainVideo");
        $(".mainSilde li").eq($prevSelect).addClass("on").css({
            "left":$left,
            "z-index":4,
            "display":"block"
        })
        $(".mainSilde li").eq($prevSelect).animate({
            "left":0
        },500,function(){
            $(".mainSilde li").eq($select).css({
                "display":"none"
            })
        })
        // $(".mainSilde li").not(".on").addClass("off").css({
        //     "display":"none"
        // });
        
        return $(".mainVideo").get(0).play();
    }



    //메인슬라이드다음버튼 함수
    function slideNext(){

        if($(".mainSilde li").is(":animated")){
            return false;
        }

        let $select=$(".mainSilde li.on").index();
        let $nextSelect=$select+1;
        let $left=$(".mainSilde li.on").width();

        
        if($nextSelect>=$(".mainSilde li").length){
            $nextSelect=0;
        }

        $(".mainSilde li").removeClass("on");
        $(".mainSilde li").removeClass("off");
        $(".mainSilde video").removeClass("mainVideo");

        $(".mainSilde li").eq($select).css({
            "z-index":3
        })
        
        $(".mainSilde li").eq($select).find("video").get(0).pause();
        $(".mainSilde video").eq($nextSelect).addClass("mainVideo");
        $(".mainSilde li").eq($nextSelect).addClass("on").css({
            "z-index":4,
            "left":$left,
            "display":"block"
        })
        .animate({
            "left":0
        },500,function(){
            $(".mainSilde li").eq($select).css({
                "display":"none"
            })
        })
        // $(".mainSilde li").not(".on").addClass("off").css({
        //     "display":"none"
        // })
        
        return $(".mainVideo").get(0).play();
    }

    //동영상종료후 일시정지이미지 변경 함수
    function vButtonAttr(){
        $(".mainVideo").get(0).addEventListener("ended",function(){
            $(".videoPlay img").attr("src","./resources/icon/play.png").attr("alt","재생");
        })
    }
    
    //상영예정작 이전버튼
    function chartPrev(){
        let $width=$(".movieChart").width()+45;
        position+=$width;

        $(".movieChart .list").css({
            "transform": "translate3d("+position+"px, 0px, 0px)"
            // "transition-duration": "0.5s"
        })
    }

    //상영예정작 다음버튼
    function chartNext(){
        let $width=($(".movieChart").width()+45)*-1;
        position+=$width;

        $(".movieChart .list").css({
            "transform": "translate3d("+position+"px, 0px, 0px)"
            // "transition-duration": "0.5s"
        })
    }
})




