var Main_City = "uksgoldall2";

function gvData_Trending() {
    $("#gvData_Trending").empty();

} 






 


function fnStartClock_3() {

    try {
        //alert("0");
        //		startSpinner();
        //CallWebServiceFromJqueryLiveRateMessage();
        //startSpinner();
        //alert("fnStartClock");
        CallWebServiceFromJquery2();
        oInterval_0 = setInterval("CallWebServiceFromJquery2()", 500); //500  
        //setInterval("resetLiveRateTable2()", 10000); //500  
        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}

function resetLiveRateTable2() {
    showOnce2 = "0";
}







function callBuySell(scripCode, scripName) {

    startSpinner();

    sessionStorage.scripname = scripName;
    sessionStorage.scripcode = scripCode;

    window.location.href = "Chart.html";


}



function CallWebServiceFromJquery2() {
    try {

        //alert("TemplateID" + "->" + TemplateID);

        var template = localStorage.defaultScripTemplateId;

        if (TemplateID) {
            template = TemplateID;
        }

        //alert(localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + Main_City_Tab1);

        $.ajax({
            type: "GET",
            //url: urlLink,
            //url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + template,
            url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + Main_City_Tab1,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess2,
            error: OnError2,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJquery " + e);
    }
}

function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}


var maxRows = 0;
var oldData;
var oldData01;
var oldData02;
var oldData03;

var oldData_Gold_silver_INR_coins;
var screenFontSize = 14;

var oldDataTop;
var oldDataGoldCoins;


var oldDataSilverCoins;
var oldDataTrending_SilverRates

var oldDataMCX;

var SwiperHeading;

var counterRefresh = 0;

var showOnce2 = "0";




function updateOnlyData2(data) {

    var messages = data.split("\n");
    var messagesOld = oldData.split("\n");

    var trowString = "";

    for (var i = 0; i < messages.length; i++) {

        var ret = messages[i].split("\t");
        if (typeof oldDataTrending != 'undefined') {
        }
        else {
            oldDataTrending = data.toString();
        }
        var messagesOld = oldDataTrending.split("\n");


        //var oldRet = messagesOld[i].split("\t");



        //$('#' + ret[1] + 'BUY').html(ret[3]);

        //For BUY
        if (ret[3] > oldRet[3]) {

            trowString = "<span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: #00D600;color:#FFF;border-radius: 5px;\">" + ret[3] + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">L : " + ret[6] + "</span>";
            //            $('#' + ret[1] + 'BUY').html(trowString);
            document.getElementById(ret[1] + 'BUY_L2').innerHTML = trowString;
        }
        else if (ret[3] < oldRet[3]) {

            trowString = "<span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: red;color:#FFF;border-radius: 5px;\">" + ret[3] + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">L : " + ret[6] + "</span>";
            //$('#' + ret[1] + 'BUY').html(trowString);
            document.getElementById(ret[1] + 'BUY_L2').innerHTML = trowString;
        }
        else {

            trowString = "<span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;color:#000;\">" + ret[3] + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">L : " + ret[6] + "</span>";
            //$('#' + ret[1] + 'BUY').html(trowString);
            document.getElementById(ret[1] + 'BUY_L2').innerHTML = trowString;
        }
        //////END Buy




        //For sell
        if (ret[4] > oldRet[4]) {


            trowString = "<span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: #00D600;color:#FFF;border-radius: 5px;\">" + ret[4] + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">H : " + ret[5] + "</span>";

            //$('#' + ret[1] + 'SELL').html(trowString);
            document.getElementById(ret[1] + 'SELL_L2').innerHTML = trowString;
        }
        else if (ret[4] < oldRet[4]) {

            trowString = "<span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: red;color:#FFF;border-radius: 5px;\">" + ret[4] + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">H : " + ret[5] + "</span>";

            //$('#' + ret[1] + 'SELL').html(trowString);
            document.getElementById(ret[1] + 'SELL_L2').innerHTML = trowString;
        }
        else {

            trowString = "<span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;color:#000;\">" + ret[4] + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">H : " + ret[5] + "</span>";

            //$('#' + ret[1] + 'SELL').html(trowString);
            document.getElementById(ret[1] + 'SELL_L2').innerHTML = trowString;
        }
        //END SELL




    }



    oldData = data.toString();


}


function OnSuccess2(data, status) {
    //alert(data);
    try {

        //        if (showOnce2 == "0") {
        //            showOnce2 = "1";
        //        }
        //        else {
        //            updateOnlyData2(data);
        //            return;
        //        }


        stopSpinner();
        Success2_Trending(data, status); //OnSuccess2 Function 2

    }
    catch (e) {
        //alert("OnSuccess" + e);
    }





}



function OnError2(request, status, error) {
    //alert("Webservice Error: " + request.statusText + " " + error);
}







var scripColor = [];

function Success2_Trending(data, status) {
    //alert(data);
    try {
        
        var messagesDesktopp = "";
        messagesDesktopp = data.split("\n");

        if (typeof oldDataTrending != 'undefined') {
        }
        else {
            oldDataTrending = data.toString();
        }
        var messagesOldDesktop = oldDataTrending.split("\n");

        if (typeof messagesDesktopp != 'undefined') {
            if (maxRows == 0) {
                maxRows = messagesDesktopp.length;
            }

            gvData_Trending();
            var zebra1 = "";
            zebra1 = document.getElementById("gvData_Trending"); //Trending Lower Portion
            var trow = "";
            var trowString = "";

            var retDesktop = "";
            retDesktop = messagesDesktopp[0].split("\t");

            if (typeof retDesktop[1] != 'undefined') {
                //alert(retDesktop[3] + '-->' + oldRetDesktop[3]);


                trowString = trowString + "<table width=\"100%\"> " +
//                                                  " <tr> " +
//                                                     " <td> " +
//                                                         "<table  width=\"100%\"> " +
//                                                            "<tr style=\"background: #2b3648;\">" +
//                                                               "<td style=\"width:50%; text-align: center !Important;font-size: 10px;padding: 5px 0;color:#FFF;\" >" +
//                                                                "<span>PRODUCT</span>" +
//                                                               "</td>" +
////                                                               "<td style=\"width:25%; text-align: center !Important;font-size: 10px;padding: 5px 0;color:#FFF;\" >" +
////                                                                    "<span>BUY</span>" +
////                                                               "</td>" +

//                                                                "<td style=\"width:25%; text-align: center !Important;font-size: 10px;padding: 5px 0;color:#FFF;\" >" +
//                                                                    "<span>SELL</span>" +
//                                                               "</td>" +

//                //"<td style=\"width:15%; text-align: center !Important\" >" +
//                //    "<span>HIGH</span>" +
//                //"</td>" +

//                //"<td style=\"width:15%; text-align: center !Important\" >" +
//                //   "<span>LOW</span>" +
//                //"</td>" +
//                                                             "</tr>" +
//                                                           "</table>"
//                "</td>" +
//                                                        "</tr>" +
                //Second Row
                                                     " <tr> " +
                                                  " <td> ";
                //messagesDesktopp.length
                for (var i = 0; i < messagesDesktopp.length; i++) {
                    //var retDesktop = jQuery.parseJSON(messages[i]);
                    var retDesktop = messagesDesktopp[i].split("\t");
                    var oldRetDesktop;

                    oldRetDesktop = messagesOldDesktop[i].split("\t");
                    if (typeof retDesktop[1] != 'undefined') {

                        //if (deletedScrips[i] != "0") {
                        var buySmall = "";
                        var buyLarge = "";
                        var sellSmall = "";
                        var sellLarge = "";

                        if (retDesktop[3].length == 5) {
                            buySmall = retDesktop[3].substring(0, 2);
                            buyLarge = retDesktop[3].substring(2, 5);
                            buySmall = "";
                            buyLarge = retDesktop[3];
                        }
                        else {

                            buySmall = "";
                            buyLarge = retDesktop[3];

                        }

                        if (retDesktop[4].length == 5) {
                            sellSmall = retDesktop[4].substring(0, 2);
                            sellLarge = retDesktop[4].substring(2, 5);
                            sellSmall = "";
                            sellLarge = retDesktop[4];
                        }
                        else {

                            sellSmall = "";
                            sellLarge = retDesktop[4];

                        }

                        if (retDesktop[3] > oldRetDesktop[3]) {

                            trowString = trowString +
                            //"<table width=\"100%\"><tr><td onclick=\"callBuySell('" + retDesktop[1] + "')\" >" +
                                            "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"\"> " +
                                                "<tr onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\" style=\"text-align: center;\"> " +
                                                    "<td class=\"buy_sell_label\" style=\"width:50%; text-align: left !Important;font-size:14px;color:#612241;\">" + retDesktop[2] + "</td> ";
                                                    //"<td id=\"" + retDesktop[1] + "BUY_L2\" style=\"width:25%;text-align: center !Important;padding-top: 8px;\"><span style=\"font-size: large !Important;color:#00D600;\">" + buySmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: #00D600;color:#FFF;border-radius: 5px;\">" + buyLarge + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">L : " + retDesktop[6] + "</span></td>";

                        }
                        else if (retDesktop[3] < oldRetDesktop[3]) {

                            trowString = trowString +
                            //                                "<table width=\"100%\">"+
                            //                                    "<tr>"+
                            //                                        "<td>"+
                                            "<table class=\"res_mob_font_width\" width=\"100%\" style=\"\">" +
                                                "<tr onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\"  style=\"text-align: center;\">" +
                                                    "<td class=\"buy_sell_label\" style=\"width:50%; text-align: left !Important;font-size:14px;color:#612241;\">" + retDesktop[2] + "</td>";
                                                    //"<td id=\"" + retDesktop[1] + "BUY_L2\" style=\"width:25%;text-align: center !Important;padding-top: 8px;\"><span style=\"font-size: large !Important;color:red;\">" + buySmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: red;color:#FFF;border-radius: 5px;\">" + buyLarge + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">L : " + retDesktop[6] + "</span></td>"

                        }
                        else {
                            trowString = trowString +
                            //                                    "<table width=\"100%\">"+
                            //                                        "<tr>"+
                            //                                            "<td>"+
                                                "<table class=\"res_mob_font_width\" width=\"100%\" style=\"\">" +
                                                    "<tr onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\"  style=\"text-align: center;\">" +
                                                        "<td class=\"buy_sell_label\" style=\"width:50%;text-align: left !Important;font-size:14px;color:#612241;\">" + retDesktop[2] + "</td>";
                                                        //"<td id=\"" + retDesktop[1] + "BUY_L2\" style=\"width:25%;text-align: center !Important;padding-top: 8px;\"><span style=\"font-size: large !Important;\">" + buySmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;\">" + buyLarge + "</span><span style=\"color:#323232;font-size: 10px;display: block;\">L : " + retDesktop[6] + "</span></td>"

                        }





                        //For Sell

                        if (retDesktop[4] > oldRetDesktop[4]) {

                            trowString = trowString +


                                                    "<td id=\"" + retDesktop[1] + "SELL_L2\" style=\"width:25%;text-align: center !Important;padding-top: 8px;\"><span style=\"font-size: large !Important;color:#00D600;\">" + sellSmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: #00D600;color:#FFF;border-radius: 5px;\">" + sellLarge + "</span></td> " +
                            /*  "<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + retDesktop[4] + "</td> " +
                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + retDesktop[5] + "</td>" +
                            */
                                                "</tr> " +
                                            "</table>"
                        }
                        else if (retDesktop[4] < oldRetDesktop[4]) {

                            trowString = trowString +
                            //                                "<table width=\"100%\">"+
                            //                                    "<tr>"+
                            //                                        "<td>"+

                                                    "<td id=\"" + retDesktop[1] + "SELL_L2\" style=\"width:25%;text-align: center !Important;padding-top: 8px;\"><span style=\"font-size: large !Important;color:red;\">" + sellSmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;padding: 2px 2px 2px;background: red;color:#FFF;border-radius: 5px;\">" + sellLarge + "</span></td>" +
                            /*"<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + retDesktop[4] + "</td> " +
                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + retDesktop[5] + "</td>" +
                            */
                                                  "</tr>" +
                                              "</table>"
                        }
                        else {
                            trowString = trowString +
                            //                                    "<table width=\"100%\">"+
                            //                                        "<tr>"+
                            //                                            "<td>"+

                                                        "<td id=\"" + retDesktop[1] + "SELL_L2\" style=\"width:25%;text-align: center !Important;padding-top: 8px;\"><span style=\"font-size: large !Important;\">" + sellSmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;font-weight: 600;color:#612241\">" + sellLarge + "</span></td>" +
                            /* "<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + retDesktop[4] + "</td> " +
                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + retDesktop[5] + "</td>" +
                            */
                                                     "</tr>" +
                                                 "</table>"
                        }

                        //trowString = trowString + "</td></tr></table>";


                        //}

                    }
                    oldDataTrending = data.toString();

                }
                trowString = trowString + "</td></tr></table>"; //</td></tr>



                //                trow = $(trowString);
                //                trow.prependTo(zebra);


            } //End If



        } // End -> if (typeof messagesDesktopp != 'undefined') {



        //trowString = trowString + "<br><br><br><br><br><br><br><br><br>"; //</td></tr>

        trow = $(trowString);
        trow.prependTo(zebra1);
        //alert(oldData_Gold_silver_INR_coins);
        oldDataTrending = data.toString();


    }
    catch (e) {
        //alert("OnSuccess : " + e);
        oldDataTrending = data.toString();
        //alert(oldData_Gold_silver_INR_coins);
    }


}








$(document).ready(function () {
    fnStartClock_3();
});

