$(document).ready(function(){

    let getEmail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/); 
    let getCheck= RegExp(/^[a-zA-Z0-9]{5,20}$/); 
    let getName= RegExp(/^[가-힣]+$/);
    let getPhone = RegExp(/^[0-9]+$/); 
    

    $("#id").on("blur",function(){
        let $id=$("#id").val()

        if(!getCheck.test($id)){
            $(".idMg").html("5~20자리의 영문 또는 숫자를 입력하세요")
            $(".idMg").css({
                "color":"red"
            })
            return false;
        }else{
            $(".idMg").html("")
            return false;
        }
    })

    $("#pw1").on("blur",function(){
        let $pw1=$("#pw1").val()

        if(!getCheck.test($pw1)){
            $(".pw1Mg").html("5~20자리의 영문 또는 숫자를 입력하세요")
            $(".pw1Mg").css({
                "color":"red"
            })
            return false;
        }else{
            $(".pw1Mg").html("")
            return false;
        }
    })

    $("#pw2").on("blur",function(){
        let $pw1=$("#pw1").val()
        let $pw2=$("#pw2").val()

        if($pw1==""){
            $(".pw2Mg").html("비밀번호를 입력하세요.")
            $(".pw2Mg").css({
                "color":"red"
            })
            $("#pw1").focus();
            return false;
        }

        if($pw2==""){
            $(".pw2Mg").html("비밀번호를 입력하세요.")
            $(".pw2Mg").css({
                "color":"red"
            })
            return false;
        }

        if($pw1!=$pw2){
            $(".pw2Mg").html("비밀번호가 일치하지 않습니다.")
            $(".pw2Mg").css({
                "color":"red"
            })
            return false;
        }else{
            $(".pw2Mg").html("비밀번호가 일치합니다.")
            $(".pw2Mg").css({
                "color":"#2E3893"
            })
            return false;
        }
    })

    $("#name").on("blur",function(){
        let $name=$("#name").val();

        if(!getName.test($name)){
            $(".nameMg").html("한글이름을 적어주세요.")
            $(".pw2Mg").css({
                "color":"red"
            })
        }else{
            $(".nameMg").html("")
        }
        
    })

    $("#email").on("blur",function(){
        let $email=$("#email").val();

        if(!getEmail.test($email)){
            $(".emailMg").html("잘못된 양식입니다.")
            $(".emailMg").css({
                "color":"red"
            })
        }else{
            $(".emailMg").html("")
        }
    })

    $("#phone").on("blur",function(){
        let $phone=$("#phone").val();

        if(!getPhone.test($phone)){
            $(".phoneMg").html("숫자만 적어주세요.")
            $(".phoneMg").css({
                "color":"red"
            })
        }else{
            $(".phoneMg").html("")
        }
    })
	
	


})