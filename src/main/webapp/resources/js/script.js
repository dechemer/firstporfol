$(document).ready(function(){

    //슬라이드 위치 변수 초기화
    let position=0;

    //카운트 변수 초기화
    let count=0;

    //이벤트리스트슬라이드- slick
    $('.evListIn').slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 1,
    });
    
     //--------------pc
    let mql = window.matchMedia("(min-width: 1280px)").matches; 
    
    if(mql){

       
        //pc 영화메뉴
        $(".pc_movieBox").hide();
        $(".pc_movie").on("mouseover",function(){
            $(".pc_movieBox").show();
        })
        $(".pc_movie").on("mouseout",function(){
            $(".pc_movieBox").hide();
        })
        $(".pc_movieBox").on("mouseover",function(){
            $(this).show();
        })
        $(".pc_movieBox").on("mouseout",function(){
            $(this).hide();
        })


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
            if($(".pc_mainSilde video").prop("muted")){
                $(".pc_mainSilde video").prop("muted",false);
                $(".videoSound img").attr("src","./resources/image/icon/sound.png");
            }else{
                $(".pc_mainSilde video").prop("muted",true);
                $(".videoSound img").attr("src","./resources/image/icon/mute.png");
            }
        })
        
        vButtonAttr()

        //메인이전버튼
        $(".mainPrev").on("click",function(){
            slidePrev();
            //$(".pc_mainSilde li").not(".on").addClass("off");
            // $(".pc_mainSilde video").not(".mainVideo").get(0).pause();
            // $(".pc_mainSilde .off video").get(0).pause();
            $(".videoPlay img").attr("src","./resources/image/icon/pause.png");
            vButtonAttr();
        })

        //메인다음버튼
        $(".mainNext").on("click",function next(){
            slideNext();
            //$(".pc_mainSilde li").not(".on").addClass("off");
            // $(".pc_mainSilde video").not(".mainVideo").get(0).pause();
            // $(".pc_mainSilde .off video").get(0).pause();
            $(".videoPlay img").attr("src","./resources/image/icon/pause.png");
            vButtonAttr();
            
        })
	
		//현재상영작버튼
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
    	
    	//상영예정작버튼
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
    	
    	//박스오피스버튼
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


        //상영작 이전버튼 숨기기
        $(".chartPrev").css({
            "display":"none"
        });
        $(".chartNext").css({
            "display":"block"
        });
        $(".chartPrev").on("click",function(){
            chartPrev();
            count--;
            if(count==0){
                $(this).css({
                    "display":"none"
                });
                $(".chartNext").css({
                    "display":"block"
                });
            }
        })
        
        //상영작 다음버튼숨기기
        $(".chartNext").on("click",function(){
            chartNext();
            count++;
            if(count>=1){
                $(".chartPrev").css({
                    "display":"block"
                });
                $(this).css({
                    "display":"none"
                });
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

        //상영작 슬라이드 버튼 초기화
        function prevHide(){
            if(count==0){
                $(".chartPrev").css({
                    "display":"none"
                });
                $(".chartNext").css({
                    "display":"block"
                }); 
            }
        }

        //메인슬라이드 이전버튼 함수
        function slidePrev(){
            let $select=$(".pc_mainSilde li.on").index();
            let $prevSelect=$select-1;
            let $left=$(".pc_mainSilde li.on").width()*-1;

            $(".pc_mainSilde li").removeClass("on");
            $(".pc_mainSilde li").removeClass("off");
            $(".pc_mainSilde video").removeClass("mainVideo");
            $(".pc_mainSilde li").eq($select).css({
                "z-index":3
            })
            $(".pc_mainSilde li").eq($select).find("video").get(0).pause();
            
            $(".pc_mainSilde video").eq($prevSelect).addClass("mainVideo");
            $(".pc_mainSilde li").eq($prevSelect).addClass("on").css({
                "left":$left,
                "z-index":4,
                "display":"block"
            })
            $(".pc_mainSilde li").eq($prevSelect).animate({
                "left":0
            },500,function(){
                $(".pc_mainSilde li").eq($select).css({
                    "display":"none"
                })
            })
            // $(".pc_mainSilde li").not(".on").addClass("off").css({
            //     "display":"none"
            // });
            
            return $(".mainVideo").get(0).play();
        }



        //메인슬라이드다음버튼 함수
        function slideNext(){

            if($(".pc_mainSilde li").is(":animated")){
                return false;
            }

            let $select=$(".pc_mainSilde li.on").index();
            let $nextSelect=$select+1;
            let $left=$(".pc_mainSilde li.on").width();

            
            if($nextSelect>=$(".pc_mainSilde li").length){
                $nextSelect=0;
            }

            $(".pc_mainSilde li").removeClass("on");
            $(".pc_mainSilde li").removeClass("off");
            $(".pc_mainSilde video").removeClass("mainVideo");

            $(".pc_mainSilde li").eq($select).css({
                "z-index":3
            })
            
            $(".pc_mainSilde li").eq($select).find("video").get(0).pause();
            $(".pc_mainSilde video").eq($nextSelect).addClass("mainVideo");
            $(".pc_mainSilde li").eq($nextSelect).addClass("on").css({
                "z-index":4,
                "left":$left,
                "display":"block"
            })
            .animate({
                "left":0
            },500,function(){
                $(".pc_mainSilde li").eq($select).css({
                    "display":"none"
                })
            })
            // $(".pc_mainSilde li").not(".on").addClass("off").css({
            //     "display":"none"
            // })
            
            return $(".mainVideo").get(0).play();
        }
        
		
        //동영상종료후 일시정지이미지 변경 함수
        function vButtonAttr(){
            $(".mainVideo").get(0).addEventListener("ended",function(){
                $(".videoPlay img").attr("src","./resources/image/icon/play.png").attr("alt","재생");
            })
        }

        //상영예정작 이전버튼
        function chartPrev(){
            let $width=$(".movieChart").width()+20;
            position+=$width;

            $(".movieChart .list").css({
                "transform": "translate3d("+position+"px, 0px, 0px)"
                // "transition-duration": "0.5s"
            })
        }

        //상영예정작 다음버튼
        function chartNext(){
            let $width=($(".movieChart").width()+20)*-1;
            position+=$width;

            $(".movieChart .list").css({
                "transform": "translate3d("+position+"px, 0px, 0px)"
                // "transition-duration": "0.5s"
            })
        }

    }else{

        

        let $select=($(".pc_mainSilde li.on").index())-1;

        $(".pc_mainSilde li").eq($select).find("video").get(0).pause();

        $(".chartPrev").css({
            "display":"none"
        });
        $(".chartNext").css({
            "display":"none"
        });
    
        //모바일
    
        //모바일 메뉴
        $(".mo_btnMenu").on("click",function(){
            $(".mo_menuWrap").animate({
                "right":0
            },500)
            $(".mo_backbk").fadeIn();
        })

        $(".mo_backbk").on("click",function(){
            $(".mo_menuWrap").animate({
                "right":"-100%"
            },500)
            $(".mo_backbk").fadeOut();
        })

        $(".mo_movie").on("click",function(){
            $(".mo_movieBox").slideToggle();
        })
        
        
        // $(".mo_slidePrev").on("click", function(){
        //     let $select=$(".mo_mainSilde li.on").index();
        //     let $prevSelect=$select-1;
        //     let $width=$(".mo_mainSilde li.on").width()*-1;

        //     $(".mo_mainSilde li").removeClass("on");
        //     $(".mo_mainSilde li").removeClass("off");

        //     $(".mo_mainSilde li").eq($select).css({
        //         "z-index":3
        //     })

        //     $(".mo_mainSilde li").eq($prevSelect).addClass("on").css({
        //         "z-index":4,
        //         "left":$width,
        //         "display":"block"
        //     })
        //     $(".mo_mainSilde li").eq($prevSelect).animate({
        //         "left":0
        //     },500,function(){
        //         $(".mo_mainSilde li").eq($select).css({
        //             "display":"none"
        //         })
        //     })
        // })

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
            $(".chartPrev").css({
                "display":"none"
            });
            $(".chartNext").css({
                "display":"none"
            });

        })

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
            $(".chartPrev").css({
                "display":"none"
            });
            $(".chartNext").css({
                "display":"none"
            });
            
        })

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
            $(".chartPrev").css({
                "display":"none"
            });
            $(".chartNext").css({
                "display":"none"
            });
        })

        

    }
    

})