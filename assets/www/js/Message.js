
//function removeAllRowsFromTable() {

//    $("#gvDataMessage tbody tr").remove();

//}


function fnStartClock_message() {

    try {
        startSpinner();

        //oInterval = setInterval("CallWebServiceFromJquery()", 500);
        CallWebServiceFromJquery_message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}

function fnStopClock() {
    try {
        //clearInterval(oInterval);
    }
    catch (e) {
        //  alert("fnStopClock" + e);
    }
}

function CallWebServiceFromJquery_message() {
    try {

        //alert(localStorage.newsIpAddress + ":" + localStorage.newsPort + "/api/GetNewsList");

        $.ajax({
            type: "GET",            
			url: localStorage.s3url + "news" + localStorage.s3filename,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_message,
            error: OnError_message,
            cache: false
        });


    }
    catch (e) {
        //alert("CallWebServiceFromJquery " + e);
    }


}
var maxRows = 0;
var oldData;
var screenFontSize = 14;


var convert = function (convert) {

    return $("<span />", { html: convert }).text();

};

function OnSuccess_message(data, status) {
    //alert(data);
    try {

        stopSpinner();

        var JSONString = data;

        //                var JSONObject = JSON.parse(JSONString);
        //                console.log(JSONObject);      // Dump all data of the Object in the console
        //                alert(JSONObject[0]["Title"]); // Access Object data


        //                for (var i = 0; i < JSONString.length; i++) {
        ////                    for (var key in data[i]) {
        ////                        if (col.indexOf(key) === -1) {
        ////                            col.push(key);
        ////                        }
        //                    //                    }


        //                    var JSONObject = JSON.parse(JSONString);
        //                    console.log(JSONObject);      // Dump all data of the Object in the console
        //                    alert(JSONObject[i]["Title"]); // Access Object data

        //                }


        var JSONObject = JSON.parse(JSONString);
        console.log(JSONObject);      // Dump all data of the Object in the console


        var tbl = $("<table class=\"News_Class\" width=\"100%\" style=\"color:#FFF;\" />").attr("id", "mytable");
        $("#div1").append(tbl);

        var trowString = "";
        //alert(JSONObject.length);
        //JSONString.length
        for (var i = 0; i < JSONObject.length; i++) {




            //alert(JSONObject[0]["Title"]); // Access Object data

            //            trowString = trowString + "<table class=\"News_Class\" width=\"100%\" style=\"color: #000;background: #fff7d8;margin-bottom: 10px;\">" +
            //                                                "<tr>" +
            //                                                    "<td>" +
            //                                                        "<a style=\"cursor:pointer;\" class=\"aTag\" id=" + JSONObject[i]["Id"] + " onclick=\"javascript:myFunctionClick('" + JSONObject[i]["Id"] + "')\" >" + //href=\"News_Details.html\"
            //                                                        "<span class=\"Title_News\">" + JSONObject[i]["Title"] + "</span>" +
            //                                                        "<span class=\"Date_News\">" + JSONObject[i]["Date"] + "</span> " +
            ////                                                        "<span class=\"Date_News_second\">" + JSONObject[i]["Source"] + "</span>" +
            //                                                        "</a>" +
            //                                                    "</td> " +
            //                                                "</tr>" +
            //                                            "</table>";




            trowString = trowString +
                "<table id=" + JSONObject[i]["Id"] + " onclick=\"javascript:myFunctionClick('" + JSONObject[i]["Id"] + "')\" style=\"margin: 0 0 7px 0;margin-bottom: 15px;border-bottom: 1px solid #b19f60;border-collapse: separate;\" width=\"100%\">" +
                    "<tr style=\"color: #000;text-align: left !Important;font-size: x-small;background: #612241;\">" +
                        "<td class=\"\" style=\"padding: 0 5px 0;color: #FFF;font-size: 12px;font-weight: 600;border: 1px solid #b19f60;border-radius: 5px 5px 0 0;\">" + JSONObject[i]["Date"] + "</td>" +
                    "</tr>" +
                    "<tr style=\"text-align:left;font-size: 100%;\">" +
                        "<td style=\"text-align: justify;color: #000;padding: 0 5px 5px;font-size: 14px;\">" + JSONObject[i]["Title"] + "</td>" +
                    "</tr>" +
                 "</table>";





        }

        $("#mytable").append(trowString);




    }
    catch (e) {
        // alert("OnSuccess" + e);
    }


}



function OnError_message(request, status, error) {
    // alert("Webservice Error: " + request.statusText);
}


$(document).ready(function () {

    fnStartClock_message();
});














