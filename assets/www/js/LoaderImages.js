
//alert(localStorage.getItem("hasCodeRunBefore"));

window.onload = function () {
    if (sessionStorage.getItem("FirstTimeLoader") === null) {
        //alert("IF");

        /** Your code here. **/
        var myVar;

        //        function myFunction_loadImg() {
        //            //myVar = setTimeout(showPagee, 300000);
        //        }


        document.getElementById("loaderr").style.display = "block";
        document.getElementById("myDivv").style.display = "none";


        setTimeout(function () {
//            var vid = document.getElementById("myVideo");
//            vid.autoplay = true;
            //            vid.load();
            document.getElementById("loaderr").style.display = "none";
            document.getElementById("myDivv").style.display = "block";
        }, 13000);


        sessionStorage.setItem("FirstTimeLoader", true);
    }
    else {
        document.getElementById("loaderr").style.display = "none";
        document.getElementById("myDivv").style.display = "block";

        setTimeout(function () {
            swiper.init();
        }, 500);
    }


}
















function showPagee() {
    document.getElementById("loaderr").style.display = "none";
    document.getElementById("myDivv").style.display = "block";
}

function SkipBtn() {
    document.getElementById("loaderr").style.display = "none";
    document.getElementById("myDivv").style.display = "block";

    setTimeout(function () {
        swiper.init();
    }, 500);

}

function FinishBtn() {

    document.getElementById("loaderr").style.display = "none";
    document.getElementById("myDivv").style.display = "block";

    setTimeout(function () {
        swiper.init();
    }, 500);

}


//function NextBtn_1() {
//    document.getElementById("LoaderSlide1").style.display = "none";
//    document.getElementById("LoaderSlide2").style.display = "block";

//    //document.getElementById("myDiv").style.display = "block";
//}


//function NextBtn_2() {
//    document.getElementById("LoaderSlide2").style.display = "none";
//    document.getElementById("LoaderSlide3").style.display = "block";

//    //document.getElementById("myDiv").style.display = "block";
//}


//function NextBtn_3() {
//    document.getElementById("LoaderSlide3").style.display = "none";
//    document.getElementById("LoaderSlide4").style.display = "block";

//    //document.getElementById("myDiv").style.display = "block";
//}







//alert(localStorage.getItem("overlayshown"));

//if (localStorage.getItem("overlayshown") == "true") {
//    //do nothing
//    alert("If");

//}
//else {
////    localStorage.setItem("overlayshown", "true");
////    ($('body').data('chardinJs')).toggle();

//    alert("Else");

//   


//}




