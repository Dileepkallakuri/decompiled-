function updateIndicator() {
    var online = navigator.onLine;
    if (online) {
        document.getElementById("connectionmsg").innerHTML = "";
        document.getElementById("connectionmsg").style.display = "none";

        document.getElementById("connectionbtn").style.display = "none";

        document.getElementById("connectiondiv").style.display = "none";

    } else {
        document.getElementById("connectionmsg").innerHTML = "Please check your internet connection";
        document.getElementById("connectionmsg").style.display = "block";

        document.getElementById("connectionbtn").style.display = "inline-block";

        document.getElementById("connectiondiv").style.display = "block";
    }
}


$(function () {
    setInterval(function () { updateIndicator(); }, 1000);

//    document.addEventListener("visibilitychange", function () {
//        if (document.hidden) {
//            console.log("Browser tab is hidden")
//        } else {
//            location.reload(true);

//            //window.location.reload(true);
//        }
//    });
});


function connectionbtn() {
    //alert("Reload");
    location.reload(true);
}

