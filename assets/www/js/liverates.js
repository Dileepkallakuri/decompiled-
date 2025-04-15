
function removeAllRowsFromTable() {
    //alert("11");
    $("#gvData").empty();
}


 

 

 


function fnStartClock_0() {

    try {
        //startSpinner();

        CallWebServiceFromJqueryMarquee();
        var timerMarquee = setInterval("CallWebServiceFromJqueryMarquee()", 30000); //30000

        CallWebServiceFromJqueryLiveRateMessage();
        CallWebServiceFromJquery();
        oInterval_0 = setInterval("CallWebServiceFromJquery()", 500); //500
        
        
        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}

function fnStartClock_1() {

    try {
        //startSpinner();
        //        CallWebServiceFromJqueryLiveRateMessage();

        //        CallWebServiceFromJqueryGoldCoins();
        //        oInterval_1 = setInterval("CallWebServiceFromJqueryGoldCoins()", 500); //500
        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}





function fnStartClock_2() {

    try {

        //startSpinner();
        //        CallWebServiceFromJqueryLiveRateMessage();
        //        CallWebServiceFromJquerySilverCoins();
        //        oInterval_2 = setInterval("CallWebServiceFromJquerySilverCoins()", 500); //500
        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}



function resetLiveRateTable() {
    showOnce = "0";
}


function refreshData() {
    //alert("refreshData");
    CallWebServiceFromJquery();

    CallWebServiceFromJqueryGoldCoins();

    CallWebServiceFromJquerySilverCoins();
}

function fnStopClock_0() {
    try {
        clearInterval(oInterval_0);
    }
    catch (e) {
        //  alert("fnStopClock" + e);
    }
}

function fnStopClock_1() {
    try {
        clearInterval(oInterval_1);
    }
    catch (e) {
        //  alert("fnStopClock" + e);
    }
}


function fnStopClock_2() {
    try {
        clearInterval(oInterval_2);
    }
    catch (e) {
        //  alert("fnStopClock" + e);
    }
}



//function callBuySell(scripCode, scripName) {

//    console.log(scripCode);
//    console.log(scripName);

//    var UserID_M = localStorage.getItem("username");
//    var Password_M = localStorage.getItem("password");


//    if (!UserID_M && !Password_M) {
//        window.location.href = "Login.html";
//    }
//    else {

//        //alert(scripCode);
//        startSpinner();

//        if ($.isNumeric(scripCode) == true) {
//            sessionStorage.scripname = scripName;
//            sessionStorage.scripcode = scripCode;
//        }
//        else {
//            sessionStorage.scripname = scripName; 
//            sessionStorage.scripcode = scripName;
//        }


//        window.location.href = "BuySell.html";

//    }


//}



function CallWebServiceFromJquery() {
    try {

        //alert("TemplateID" + "->" + TemplateID);

        var template = localStorage.defaultScripTemplateId;

        if (TemplateID) {
            template = TemplateID;
        }

        //alert(localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/gold");


        $.ajax({
            type: "GET",
            //url: urlLink,
            url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/gold",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess1,
            error: OnError1,
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
var oldDataTop3;

var oldData_Gold_silver_INR_coins;
var screenFontSize = 14;

var oldDataTop;
var oldDataGoldCoins;


var oldDataSilverCoins;
var oldDataTrending_SilverRates

var oldDataMCX;

var SwiperHeading;

var counterRefresh = 0;

var showOnce = "0";




function OnSuccess1(data, status) {
    //alert(data);
    try {
        
        //stopSpinner();
        var messages = data.split("\n");


        if (typeof oldDataTop3 != 'undefined') {

        }
        else {
            //alert("1");
            oldDataTop3 = data.toString();
        }
        var messagesOld = oldDataTop3.split("\n");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }

            removeAllRowsFromTable();
            //            gvData_Gold_Silver_INR_coinss();

            var zebra_top3 = document.getElementById("gvData");
            //            var zebra2 = document.getElementById("gvData_Gold_Silver_INR_coinss");

            var trow;
            //            var trow2;

            //GOLD
            var ret = messages[0].split("\t");
            var oldRet;
            var trowString = "";
            oldRet = messagesOld[0].split("\t");
            if (typeof ret[1] != 'undefined') { 


                trowString = trowString + "<tr><td id=\"" + ret[1] + "BUY\"  align=\"center\" style=\"width: 33%;\">";

                //alert(retDesktop[3] + '-->' + oldRetDesktop[3]);
                if (ret[3] > oldRet[3]) {
                    trowString = trowString + "<table  width=\"100%\" class=\"goldd\" bgcolor=\"#00D600\" style=\"background-color:#00D600;border-radius: 5px;\"><tr ><td class=\"sell\" style=\"background-color:#00D600; color:white;text-align:center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\"><span style=\"background-color:#00D600;\">" + ret[3] + "</span></td></tr></table>"
                }
                else if (ret[3] < oldRet[3]) {
                    trowString = trowString + "<table  width=\"100%\" class=\"goldd\" bgcolor=\"red\" style=\"background-color:red;border-radius: 5px;\"><tr ><td class=\"sell\" style=\"background-color:red; color:white;text-align:center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\"><span style=\"background-color:red;\">" + ret[3] + "</span></td></tr></table>"
                }
                else {
                    trowString = trowString + "<table  width=\"100%\" class=\"goldd\" bgcolor=\"#612241\" style=\"background-color:#612241;border-radius: 5px;\"><tr ><td class=\"sell\" style=\"background-color:#612241;color:#FFF;text-align:center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\";color:#FFF;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\"><span style=\"background-color:#612241\">" + ret[3] + "</span></td></tr></table>"
                }

                trowString = trowString + "</td>";



            }
            //SILVER
            ret = messages[1].split("\t");
            oldRet = messagesOld[1].split("\t");
            if (typeof ret[1] != 'undefined') {


                if (ret[3] > oldRet[3]) {

                    trowString = trowString + "<td id=\"" + ret[1] + "BUY\" align=\"center\" style=\"width: 33%;\"><table  width=\"100%\" class=\"goldd\"  bgcolor=\"#00D600\" style=\"background-color:#00D600;border-radius: 5px;\"><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"

                }
                else if (ret[3] < oldRet[3]) {
                    trowString = trowString + "<td id=\"" + ret[1] + "BUY\" align=\"center\" style=\"width: 33%;\"><table  width=\"100%\" class=\"goldd\"  bgcolor=\"red\" style=\"background-color:red;border-radius: 5px;\"><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
                }
                else {
                    trowString = trowString + "<td id=\"" + ret[1] + "BUY\" align=\"center\" style=\"width: 33%;\"><table  width=\"100%\" class=\"goldd\"  bgcolor=\"#612241\" style=\"background-color:#612241;border-radius: 5px;\"><tr><td style=\"background-color:#612241;color:#FFF;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#612241;color:#FFF;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
                }


            }
            //INR
            ret = messages[2].split("\t");
            oldRet = messagesOld[2].split("\t");
            if (typeof ret[2] != 'undefined') {
                var trowString;

                //For Rates
                if (ret[3] > oldRet[3]) {


                    trowString = trowString + "<td id=\"" + ret[1] + "BUY\" style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" bgcolor=\"#00D600\" style=\"background-color:#00D600;border-radius: 5px;\"><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"

                }
                else if (ret[3] < oldRet[3]) {

                    trowString = trowString + "<td id=\"" + ret[1] + "BUY\" style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" bgcolor=\"red\" style=\"background-color:red;border-radius: 5px;\"><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
                }
                else {

                    trowString = trowString + "<td id=\"" + ret[1] + "BUY\" style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" bgcolor=\"#612241\" style=\"background-color:#612241;border-radius: 5px;\"><tr><td style=\"background-color:#612241;color:#FFF;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#612241;color:#FFF;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
                }



            }

            trowString = trowString + "</tr>";








            //            trowString = trowString + "</table>" +
            //	                                    "</td>" +
            //                                    "</tr>";

            //            trowString = trowString + "<tr style=\"background: #0d1539;\">" +
            //	                                        "<td>" +
            //		                                        "<br />" +
            //	                                        "</td>" +
            //                                        "</tr>";

            //            trowString = trowString + "</table>";
            trowString = trowString;
            trow = $(trowString);
            //            trow2 = $(trowString);

            //            trow2.prependTo(zebra2);
            trow.prependTo(zebra_top3);

            oldDataTop3 = data.toString();

        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }


        //Success2_Trending(data, status); //OnSuccess2 Function 2
        //Success3_GlobalScript_Portfolio_Fetch(data, status);
    }
    catch (e) {
        //alert("OnSuccess" + e);
    }



}



function OnError1(request, status, error) {
    //alert("Webservice Error: " + request.statusText + " " + error);
}




var scripColor = [];

function Success2_Trending(data, status) {
    //alert(data);
    try {
        //alert("123");
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

                //                if (LiveRateMessage != "") {
                //                    trowString = trowString + "<tr>" +
                //	                                            "<td>" +
                //                                                    "<table width=\"100%\" border=\"0\">" +
                //                                                        "<tr>" +
                //                                                            "<td style=\"padding: 5px 0px 10px;text-align:center\">" + LiveRateMessage + "</td>" +
                //								                        "</tr>" +
                //                                                    "</table>" +
                //                                                "</td>" +
                //                                            "</tr>";
                //                }


                trowString = trowString + "<table width=\"100%\"> " +
                                                  " <tr> " +
                                                     " <td> " +
                                                         "<table  width=\"100%\" style=\"background: #8a6d4b;border-radius: 3px;\"> " +
                                                            "<tr>" +
                                                               "<td style=\"width:60%;\">" +

                                                               "</td>" +
                //                                                               "<td style=\"width:25%; text-align: center !Important\" >" +
                //                                                                    "<span>BUY</span>" +
                //                                                               "</td>" +

                                                                "<td style=\"width:40%; text-align: center !Important\" >" +
                                                                    "<span>PRICE</span>" +
                                                               "</td>" +

                //"<td style=\"width:15%; text-align: center !Important\" >" +
                //    "<span>HIGH</span>" +
                //"</td>" +

                //"<td style=\"width:15%; text-align: center !Important\" >" +
                //   "<span>LOW</span>" +
                //"</td>" +
                                                             "</tr>" +
                                                           "</table>"
                "</td>" +
                                                        "</tr>" +
                //Second Row
                                                     " <tr> " +
                                                  " <td> ";
                //messagesDesktopp.length
                for (var i = 3; i < messagesDesktopp.length; i++) {
                    //var retDesktop = jQuery.parseJSON(messages[i]);
                    var retDesktop = messagesDesktopp[i].split("\t");
                    var oldRetDesktop;

                    oldRetDesktop = messagesOldDesktop[i].split("\t");
                    if (typeof retDesktop[1] != 'undefined') {


                        if (retDesktop[3] > oldRetDesktop[3]) {

                            trowString = trowString +
                            //"<table width=\"100%\"><tr><td onclick=\"callBuySell('" + retDesktop[1] + "')\" >" +
                                            "<table class=\"res_mob_font_width\"  width=\"100%\"> " +
                                                "<tr onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\" style=\"text-align: center;\"> " +
                                                    "<td class=\"buy_sell_label\" style=\"width:60%; text-align: left !Important;font-size:" + Change_ScriptNameFont + ";color: #612241;\">" + retDesktop[2] + "</td> ";
                            //                                                    "<td id=\"" + retDesktop[1] + "BUY\" style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#00D600;\">" + retDesktop[3] + "</span><br/><span style=\"color:#612241;\">L : " + retDesktop[6] + "</span></td>";

                        }
                        else if (retDesktop[3] < oldRetDesktop[3]) {

                            trowString = trowString +
                            //                                "<table width=\"100%\">"+
                            //                                    "<tr>"+
                            //                                        "<td>"+
                                            "<table class=\"res_mob_font_width\" width=\"100%\">" +
                                                "<tr onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\"  style=\"text-align: center;\">" +
                            "<td class=\"buy_sell_label\" style=\"width:60%; text-align: left !Important;font-size: " + Change_ScriptNameFont + ";color: #612241;\">" + retDesktop[2] + "</td>";
                            // "<td id=\"" + retDesktop[1] + "BUY\" style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:red;\">" + retDesktop[3] + "</span><br/><span style=\"color:#612241;\">L : " + retDesktop[6] + "</span></td>"

                        }
                        else {
                            trowString = trowString +
                            //                                    "<table width=\"100%\">"+
                            //                                        "<tr>"+
                            //                                            "<td>"+
                                                "<table class=\"res_mob_font_width\" width=\"100%\">" +
                                                    "<tr onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\"  style=\"text-align: center;\">" +
                             "<td class=\"buy_sell_label\" style=\"width:60%;text-align: left !Important;font-size: " + Change_ScriptNameFont + ";color: #612241;\">" + retDesktop[2] + "</td>";
                            // "<td id=\"" + retDesktop[1] + "BUY\" style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#612241;\">" + retDesktop[3] + "</span><br/><span style=\"color:#612241;\">L : " + retDesktop[6] + "</span></td>"

                        }





                        //For Sell

                        if (retDesktop[4] > oldRetDesktop[4]) {

                            trowString = trowString +


                                                    "<td id=\"" + retDesktop[1] + "SELL\" style=\"width:40%;text-align: center !Important;color: #612241;font-size:10px;\"><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#00D600;\">" + retDesktop[4] + "</span><br/><span style=\"color:#612241;\">L : " + retDesktop[6] + "</span> | <span style=\"color:#612241;\">H : " + retDesktop[5] + "</span></td> " +
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

                                                    "<td id=\"" + retDesktop[1] + "SELL\" style=\"width:40%;text-align: center !Important;color: #612241;font-size:10px;\"><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:red;\">" + retDesktop[4] + "</span><br/><span style=\"color:#612241;\">L : " + retDesktop[6] + "</span> | <span style=\"color:#612241;\">H : " + retDesktop[5] + "</span></td>" +
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

                                                        "<td id=\"" + retDesktop[1] + "SELL\" style=\"width:40%;text-align: center !Important;color: #612241;font-size:10px;\"><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#612241;\">" + retDesktop[4] + "</span><br/><span style=\"color:#612241;\">L : " + retDesktop[6] + "</span> | <span style=\"color:#612241;\">H : " + retDesktop[5] + "</span></td>" +
                            /* "<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + retDesktop[4] + "</td> " +
                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + retDesktop[5] + "</td>" +
                            */
                                                     "</tr>" +
                                                 "</table>"
                        }

                        //trowString = trowString + "</td></tr></table>";


                        //}

                    }
                    oldData = data.toString();

                }
                trowString = trowString + "</td></tr></table>"; //</td></tr>
                //                trow = $(trowString);
                //                trow.prependTo(zebra);


            } //End If



        } // End -> if (typeof messagesDesktopp != 'undefined') {



        trowString = trowString + "<br><br><br><br><br><br><br><br><br>"; //</td></tr>

        trow = $(trowString);
        trow.prependTo(zebra1);
        //alert(oldData_Gold_silver_INR_coins);
        oldDataTrending = data.toString();


    }
    catch (e) {
        // alert("OnSuccess : " + e);
        oldDataTrending = data.toString();
        //alert(oldData_Gold_silver_INR_coins);
    }


}










//Silver Rates Monank ###########################################################################################
function CallWebServiceFromJquerySilverCoins() {
    try {


        //alert(localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + localStorage.coinsScripTemplateId);

        //alert('CallWebServiceFromJquery');
        $.ajax({
            type: "GET",
            //url: urlLink,
            //url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/srbullion",
            //url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + localStorage.coinsScripTemplateId,
            url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + localStorage.coinsScripTemplateId,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_SilverRates,
            error: OnError_SilverRates,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJquery " + e);
    }
}



function OnSuccess_SilverRates(data, status) {
    //alert(data);
    try {
        stopSpinner();
        //        var messages = data.split("\n");


        //        if (typeof oldDataSilverCoins != 'undefined') {

        //        }
        //        else {
        //            //alert("1");
        //            oldDataSilverCoins = data.toString();
        //        }
        //        var messagesOld = oldDataSilverCoins.split("\n");

        //        if (typeof messages != 'undefined') {
        //            if (maxRows == 0) {
        //                maxRows = messages.length;
        //            }

        //            removeAllRowsFromTable_gvData_SilverRates();

        //            var zebra_SilverRates = document.getElementById("gvData_SilverRates");

        //            var trow_SilverRates;

        //            var trowString = "";


        //            //GOLD
        //            var ret = messages[0].split("\t");
        //            var oldRet;
        //            var trowString = "";
        //            oldRet = messagesOld[0].split("\t");
        //            if (typeof ret[1] != 'undefined') {


        //                trowString = trowString + "<tr><td align=\"center\" style=\"width: 33%;\">";

        //                //alert(retDesktop[3] + '-->' + oldRetDesktop[3]);
        //                if (ret[3] > oldRet[3]) {
        //                    trowString = trowString + "<table width=\"100%\" class=\"goldd\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr ><td class=\"sell\" style=\"background-color:#00D600; color:white;text-align:center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#00D600; color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table>"
        //                }
        //                else if (ret[3] < oldRet[3]) {
        //                    trowString = trowString + "<table width=\"100%\" class=\"goldd\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr ><td class=\"sell\" style=\"background-color:red; color:white;text-align:center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table>"
        //                }
        //                else {
        //                    trowString = trowString + "<table width=\"100%\" class=\"goldd\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr ><td class=\"sell\" style=\"background-image: linear-gradient(to right, #646ffc, #726bfc, #8664fc, #8e62fd, #9372f0);color: #FFF;text-align:center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-image: linear-gradient(to right, #646ffc, #726bfc, #8664fc, #8e62fd, #9372f0);color: #FFF;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table>"
        //                }

        //                trowString = trowString + "</td>";



        //            }
        //            //SILVER
        //            ret = messages[1].split("\t");
        //            oldRet = messagesOld[1].split("\t");
        //            if (typeof ret[1] != 'undefined') {


        //                if (ret[3] > oldRet[3]) {

        //                    trowString = trowString + "<td align=\"center\" style=\"width: 33%;\"><table  width=\"100%\" class=\"goldd\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"

        //                }
        //                else if (ret[3] < oldRet[3]) {
        //                    trowString = trowString + "<td align=\"center\" style=\"width: 33%;\"><table  width=\"100%\" class=\"goldd\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
        //                }
        //                else {
        //                    trowString = trowString + "<td align=\"center\" style=\"width: 33%;\"><table  width=\"100%\" class=\"goldd\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr><td style=\"background-image: linear-gradient(to right, #646ffc, #726bfc, #8664fc, #8e62fd, #9372f0);color: #FFF;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-image: linear-gradient(to right, #646ffc, #726bfc, #8664fc, #8e62fd, #9372f0);color: #FFF;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
        //                }


        //            }
        //            //INR
        //            ret = messages[2].split("\t");
        //            oldRet = messagesOld[2].split("\t");
        //            if (typeof ret[2] != 'undefined') {
        //                var trowString;

        //                //For Rates
        //                if (ret[3] > oldRet[3]) {


        //                    trowString = trowString + "<td style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:#00D600;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"

        //                }
        //                else if (ret[3] < oldRet[3]) {

        //                    trowString = trowString + "<td style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-color:red;color:white;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
        //                }
        //                else {

        //                    trowString = trowString + "<td style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" style=\"border-radius: 5px;border-collapse: separate;border-spacing: 0 5px;\"><tr><td style=\"background-image: linear-gradient(to right, #646ffc, #726bfc, #8664fc, #8e62fd, #9372f0);color: #FFF;text-align: center !Important;font-size: 100%;border-top-left-radius: 5px;border-top-right-radius: 5px;\">" + ret[2] + "</td></tr><tr><td style=\"background-image: linear-gradient(to right, #646ffc, #726bfc, #8664fc, #8e62fd, #9372f0);color: #FFF;text-align: center !Important;font-size: x-large;border-bottom-left-radius: 5px;border-bottom-right-radius: 5px;\">" + ret[3] + "</td></tr></table></td>"
        //                }



        //            }

        //            trowString = trowString + "</tr>";








        //            trowString = trowString;
        //            trow_SilverRates = $(trowString);
        //            trow_SilverRates.prependTo(zebra_SilverRates);
        //            oldDataSilverCoins = data.toString();

        //        }

        //        if (counterRefresh == 0) {
        //            //myScroll.refresh();
        //            counterRefresh = counterRefresh + 1;
        //        }


        Success2_Trending_SilverRates(data, status); //OnSuccess2 Function 2

    }
    catch (e) {
        //alert("OnSuccess" + e);
    }


}
function OnError_SilverRates(request, status, error) {
    //alert("Webservice Error: " + request.statusText + " " + error);
}





function Success2_Trending_SilverRates(data, status) {
    //alert(data);
    try {

        var messages = "";
        messages = data.split("\n");

        if (typeof oldDataTrending_SilverRates != 'undefined') {
        }
        else {
            oldDataTrending_SilverRates = data.toString();
        }
        var messagesOld = oldDataTrending_SilverRates.split("\n");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }

            gvData_Trending_gvData_Trending_SilverRates();
            var zebra1_SilverRates = "";
            zebra1_SilverRates = document.getElementById("gvData_Trending_SilverRates"); //Trending Lower Portion
            var trow1_SilverRates = "";
            var trowString = "";

            var ret = "";
            ret = messages[0].split("\t");

            if (typeof ret[1] != 'undefined') {
                //alert(ret[3] + '-->' + oldRet[3]);

                trowString = trowString + "<table width=\"100%\"> " +
                                                  " <tr> " +
                                                     " <td> " +
                                                         "<table  width=\"100%\" style=\"color: #FFF;margin-bottom: 5px;\"> " +
                                                            "<tr>" +
                                                               "<td style=\"width:50%;\">" +

                                                               "</td>" +
                                                               "<td style=\"width:25%; text-align: center !Important;padding: 5px 3px;font-weight: 700;\" >" +
                                                                    "<span>995</span>" +
                                                               "</td>" +

                                                                "<td style=\"width:25%; text-align: center !Important;font-weight: 700;\" >" +
                                                                    "<span>999</span>" +
                                                               "</td>" +

                //"<td style=\"width:15%; text-align: center !Important\" >" +
                //    "<span>HIGH</span>" +
                //"</td>" +

                //"<td style=\"width:15%; text-align: center !Important\" >" +
                //   "<span>LOW</span>" +
                //"</td>" +
                                                             "</tr>" +
                                                           "</table>"
                "</td>" +
                                                        "</tr>" +
                //Second Row
                                                     " <tr> " +
                                                  " <td> ";
                //messagesDesktopp.length
                for (var i = 0; i < messages.length; i++) {


                    //var retDesktop = jQuery.parseJSON(messages[i]);
                    var retDesktop = messages[i].split("\t");
                    var oldRetDesktop;

                    oldRetDesktop = messagesOld[i].split("\t");
                    if (typeof retDesktop[1] != 'undefined') {

                        //if (deletedScrips[i] != "0") {
                        var buySmall = "";
                        var buyLarge = "";
                        var sellSmall = "";
                        var sellLarge = "";

                        if (retDesktop[2].length == 5) {
                            buySmall = retDesktop[3].substring(0, 2);
                            buyLarge = retDesktop[3].substring(2, 5);
                            buySmall = "";
                            buyLarge = retDesktop[3];
                        }
                        else {

                            buySmall = "";
                            buyLarge = retDesktop[3];

                        }

                        if (retDesktop[3].length == 5) {
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
                                            "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"border-bottom: 0px solid #FFD700;\"> " +
                                                "<tr onclick=\"javascript:callBuySell('" + retDesktop[1] + "')\" style=\"text-align: center;\"> " +
                                                    "<td class=\"buy_sell_label\" style=\"width:50%; text-align: left !Important;font-size:" + Change_ScriptNameFont + ";\">" + retDesktop[2] + "</td> " + // small;
                                                    "<td style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: large !Important;color:#00D600;\">" + buySmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#00D600;\">" + buyLarge + "</span></td>"; //<br/><span style=\"color:red;\">L : " + retDesktop[5] + "</span>

                        }
                        else if (retDesktop[3] < oldRetDesktop[3]) {

                            trowString = trowString +
                            //                                "<table width=\"100%\">"+
                            //                                    "<tr>"+
                            //                                        "<td>"+
                                            "<table class=\"res_mob_font_width\" width=\"100%\" style=\"border-bottom: 0px solid #FFD700;\">" +
                                                "<tr onclick=\"javascript:callBuySell('" + retDesktop[1] + "')\"  style=\"text-align: center;\">" +
                                                    "<td class=\"buy_sell_label\" style=\"width:50%; text-align: left !Important;font-size: " + Change_ScriptNameFont + ";\">" + retDesktop[2] + "</td>" +
                                                    "<td style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: large !Important;color:red;\">" + buySmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:red;\">" + buyLarge + "</span></td>" //<br/><span style=\"color:red;\">L : " + retDesktop[5] + "</span>

                        }
                        else {
                            trowString = trowString +
                            //                                    "<table width=\"100%\">"+
                            //                                        "<tr>"+
                            //                                            "<td>"+
                                                "<table class=\"res_mob_font_width\" width=\"100%\" style=\"border-bottom: 0px solid #FFD700;\">" +
                                                    "<tr onclick=\"javascript:callBuySell('" + retDesktop[1] + "')\"  style=\"text-align: center;\">" +
                                                        "<td class=\"buy_sell_label\" style=\"width:50%;text-align: left !Important;font-size: " + Change_ScriptNameFont + ";\">" + retDesktop[2] + "</td>" +
                                                        "<td style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: large !Important;color:#FFF;\">" + buySmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#FFF;\">" + buyLarge + "</span></td>" //<br/><span style=\"color:red;\">L : " + retDesktop[5] + "</span>

                        }





                        //For Sell

                        if (retDesktop[4] > oldRetDesktop[4]) {

                            trowString = trowString +


                                                    "<td style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: large !Important;color:#00D600;\">" + sellSmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#00D600;\">" + sellLarge + "</span></td> " + //<br/><span style=\"color:green;\">H : " + retDesktop[4] + "</span>
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

                                                    "<td style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: large !Important;color:red;\">" + sellSmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:red;\">" + sellLarge + "</span></td>" + //<br/><span style=\"color:green;\">H : " + retDesktop[4] + "</span>
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

                                                        "<td style=\"width:25%;text-align: center !Important;\"><span style=\"font-size: large !Important;color:#FFF;\">" + sellSmall + "</span><span style=\"font-size: " + Script_Font_LiveRatesCoins + " !Important;color:#FFF;\">" + sellLarge + "</span></td>" + //<br/><span style=\"color:green;\">H : " + retDesktop[4] + "</span>
                            /* "<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + retDesktop[4] + "</td> " +
                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + retDesktop[5] + "</td>" +
                            */
                                                     "</tr>" +
                                                 "</table>"
                        }

                        //trowString = trowString + "</td></tr></table>";


                        //}

                    }
                    oldDataTrending_SilverRates = data.toString();

                }
                trowString = trowString + "</td></tr></table>"; //</td></tr>
                //                trow = $(trowString);
                //                trow.prependTo(zebra);


            } //End If



        } // End -> if (typeof messagesDesktopp != 'undefined') {



        trowString = trowString + "<br><br><br><br><br><br><br><br><br>"; //</td></tr>



        //trowString = trowString + "<br><br><br><br><br><br><br><br><br>"; //</td></tr>

        trow1_SilverRates = $(trowString);
        trow1_SilverRates.prependTo(zebra1_SilverRates);
        //alert(oldData_Gold_silver_INR_coins);
        oldDataTrending_SilverRates = data.toString();

        //OnSuccessGCSC_Silver(data, status); //OnSuccess2 Function 2

    }
    catch (e) {
        // alert("OnSuccess : " + e);
        oldDataTrending_SilverRates = data.toString();
        //alert(oldData_Gold_silver_INR_coins);
    }


}












//// ################################### Coins   #####################################################


function CallWebServiceFromJqueryGoldCoins() {
    try {

        $.ajax({
            type: "GET",
            //            url: "http://website.ronakgold.com:" + GoldCoinsPort + "/VOTSBroadcast/Services/xml/GetLiveRate",
            url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/kling",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccessGoldCoins,
            error: OnErrorGoldCoins,
            cache: false
        });


    }
    catch (e) {
        // alert("CallWebServiceFromJquery " + e);
    }


}


//Gold Coinsssssssssssssssssssssssssss
function OnSuccessGoldCoins(data, status) {
    //alert(data);
    try {

        var messagesDesktopp = "";
        messagesDesktopp = data.split("\n");
        //alert(messagesDesktopp.length);
        if (typeof oldDataGoldCoins != 'undefined') {

        }
        else {
            //alert("1");
            oldDataGoldCoins = data.toString();
        }
        var messagesOldDesktop = oldDataGoldCoins.split("\n");

        if (typeof messagesDesktopp != 'undefined') {
            if (maxRows == 0) {
                maxRows = messagesDesktopp.length;
            }


            removeAllRowsFromTable_gvData_Trending_GoldRates();

            var zebra = "";
            zebra = document.getElementById("gvData_Trending_GoldRates"); //Desktopppppppppppppppppppppppppppp
            var trow = "";
            var trowString = "";


            trowString = trowString + "<table class=\"tt_33\" width=\"100%\" style=\"\"> " +
                                            " <tr > " +
                                                " <td style=\"padding: 0px 10px 0;\"> " +
                                                    "<table  width=\"100%\" style=\"\"> " +
                                                    "<tr>" +
                                                        "<td width=\"50%\" style=\"font-size: 12px;color:#FFF;font-weight:300;padding: 5px 10px;text-align:left; \">" +
            												"<span>PRODUCT</span>" +
                                                        "</td>" +
                                                        "<td width=\"25%\" style=\"font-size: 12px;padding:5px 10px;color:#FFF;font-weight:300;\" >" +
                                                            "<span>BUY</span>" +
                                                        "</td>" +

                                                        "<td width=\"25%\" style=\"font-size: 12px;padding:5px 10px;color:#FFF;font-weight:300;\" >" +
                                                            "<span>SELL</span>" +
                                                        "</td>" +

            //                                                                "<td style=\"width:20%; text-align: center !Important\" >" +
            //                                                                    "<span></span>" +
            //                                                                "</td>" +

            //"<td style=\"width:15%; text-align: center !Important\" >" +
            //   "<span>LOW</span>" +
            //"</td>" +
                                                        "</tr>" +
                                                    "</table>"
            "</td>" +
                                                "</tr>" +
            //Second Row
                                                     " <tr> " +
                                                  " <td> ";
            //messages.length
            for (var i = 0; i < messagesDesktopp.length; i++) {
                //var ret = jQuery.parseJSON(messages[i]);
                var ret = messagesDesktopp[i].split("\t");
                var oldRet;

                var displayy = "block";
                if (i == 8 || i == 9) {
                    displayy = "block";
                }


                oldRet = messagesOldDesktop[i].split("\t");
                if (typeof ret[1] != 'undefined') {

                    //if (deletedScrips[i] != "0") {
                    var buySmall = "";
                    var buyLarge = "";
                    var sellSmall = "";
                    var sellLarge = "";

                    if (ret[2].length == 5) {
                        buySmall = ret[3].substring(0, 2);
                        buyLarge = ret[3].substring(2, 5);
                        buySmall = "";
                        buyLarge = ret[3];
                    }
                    else {

                        buySmall = "";
                        buyLarge = ret[3];

                    }

                    if (ret[3].length == 5) {
                        sellSmall = ret[4].substring(0, 2);
                        sellLarge = ret[4].substring(2, 5);
                        sellSmall = "";
                        sellLarge = ret[4];
                    }
                    else {

                        sellSmall = "";
                        sellLarge = ret[4];

                    }

                    if (ret[3] > oldRet[3]) {

                        trowString = trowString +
                        //"<table width=\"100%\"><tr><td onclick=\"callBuySell('" + ret[1] + "')\" >" +
                                            "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"border-bottom: 0px solid #000;\"> " +
                                                "<tr onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "');\" style=\"text-align: center;\"> " +
                                                    "<td class=\"buy_sell_label\" style=\"width:50%;padding: 15px 5px 15px 10px;text-align:left;font-weight:500;font-size: 14px !Important;color:#FFF\">" + ret[2] + "</td> " +  // small;
                                                    "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px;background-color:#44ad4f;border-radius:10px;color:#FFF;font-weight:500\">" + buySmall + "</span>
                                                    "<span style=\"padding: 3px;font-size: 18px; color:#00D600;font-weight:600\">" + buyLarge + "</span>" +
                                                    "<span style=\"padding: 3px;font-size: 9px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">L : " + ret[6] + "</span>" +
                                                    "</td>";

                    }
                    else if (ret[3] < oldRet[3]) {

                        trowString = trowString +
                        //                                "<table width=\"100%\">"+
                        //                                    "<tr>"+
                        //                                        "<td>"+
                                            "<table class=\"res_mob_font_width\" width=\"100%\" style=\"border-bottom: 0px solid #000;\">" +
                                                "<tr onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "');\"  style=\"text-align: center;\">" +
                                                    "<td class=\"buy_sell_label\" style=\"width:50%;padding: 15px 5px 15px 10px;text-align:left;font-weight:500;font-size: 14px !Important;color:#FFF\">" + ret[2] + "</td>" +
                                                    "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px;padding: 3px; background-color:#d0161e;border-radius:10px;color:#FFF;font-weight:500\">" + buySmall + "</span>
                                                    "<span style=\"padding: 3px; font-size: 18px; color:red;font-weight:600\">" + buyLarge + "</span>" +
                                                    "<span style=\"padding: 3px;font-size: 9px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">L : " + ret[6] + "</span>" +
                                                    "</td>";

                    }
                    else {
                        trowString = trowString +
                        //                                    "<table width=\"100%\">"+
                        //                                        "<tr>"+
                        //                                            "<td>"+
                                                "<table class=\"res_mob_font_width\" width=\"100%\" style=\"border-bottom: 0px solid #000;\">" +
                                                    "<tr onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "');\"  style=\"text-align: center;\">" +
                                                        "<td class=\"buy_sell_label\" style=\"width:50%;padding: 15px 5px 15px 10px;text-align:left;font-weight:500;font-size: 14px !Important;color:#FFF\">" + ret[2] + "</td>" +
                                                        "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px;padding: 3px; font-weight:500; \">" + buySmall + "</span>
                                                        "<span style=\"padding: 3px; font-size: 18px;color:#FFF;font-weight:600;\">" + buyLarge + "</span>" +
                                                        "<span style=\"padding: 3px;font-size: 9px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">L : " + ret[6] + "</span>" +
                                                        "</td>";

                    }





                    //For Sell

                    if (ret[4] > oldRet[4]) {

                        trowString = trowString +


                                                    "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px; background-color:#44ad4f;border-radius:10px;padding: 3px;color:#FFF;font-weight:500\">" + sellSmall + "</span>
                                                    "<span style=\"padding: 3px;font-size: 18px;color:#00D600;font-weight:600;\">" + sellLarge + "</span>" + //<br/><span style=\"color:#8ce08c;\">H : " + ret[5] + "</span>
                                                    "<span style=\"padding: 3px;font-size: 9px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">H : " + ret[5] + "</span>" +
                                                    "</td>";

                    }
                    else if (ret[4] < oldRet[4]) {

                        trowString = trowString +
                        //                                "<table width=\"100%\">"+
                        //                                    "<tr>"+
                        //                                        "<td>"+

                                                    "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px;background-color:#d0161e;border-radius:10px;color:#FFF;font-weight:500\">" + sellSmall + "</span>
                                                    "<span style=\"padding: 3px;font-size: 18px;color:red;font-weight:600\">" + sellLarge + "</span>" +
                                                    "<span style=\"padding: 3px;font-size: 9px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">H : " + ret[5] + "</span>" +
                                                    "</td>";



                    }
                    else {
                        trowString = trowString +
                        //                                    "<table width=\"100%\">"+
                        //                                        "<tr>"+
                        //                                            "<td>"+

                                                        "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //<span style=\"font-size: 15px; padding:1px 5px;padding: 3px;font-weight:500;color:black\">" + sellSmall + "</span>
                                                        "<span style=\"padding: 3px;font-size: 18px; padding:1px 5px;font-weight:600;color:#FFF\">" + sellLarge + "</span>" +
                                                        "<span style=\"padding: 3px;font-size: 9px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">H : " + ret[5] + "</span>" +
                                                        "</td>";


                    }


                    trowString = trowString + "</tr></table>";




                }
                oldDataGoldCoins = data.toString();

            }
            trowString = trowString + "</td></tr></table>"; //</td></tr>









            trow = $(trowString);
            trow.prependTo(zebra);




        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }
        oldDataGoldCoins = data.toString();
        //OnSuccessMobileTop(data, status);

    }
    catch (e) {
        //alert("OnSuccess" + e);
        oldDataGoldCoins = data.toString();
        //alert(oldDataGoldCoins);
    }


}



function OnErrorGoldCoins(request, status, error) {
    // alert("Webservice Error: " + request.statusText);
}
















$(document).ready(function () {
    //fnStartClock();
});




function CallWebServiceFromJqueryMarquee() {
    try {
        //alert("CallWebServiceFromJqueryMarquee");

        //alert(localStorage.webPanel + "/WebServiceGetMarquee.asmx/getMarquee?username=" + localStorage.appnameWithMiniadminId);

        $.ajax({
            type: "GET",
            //            url: "http://message.arihantspot.com/WebServiceGetMarquee.asmx/getMarquee",            
			url: localStorage.s3url + "tickerlist1" + localStorage.s3filename,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccessMarquee,
            error: OnErrorMarquee,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJqueryMarquee " + e);
    }


}

function OnSuccessMarquee(data, status) {
    //alert(data);
    try {
// change start
         var message = data;
			message = message.replace('|','');
			message = message.replace('|','');
			message = message.replace('|','');
			message = message.replace('|','');
			// change end

				var msg = message;

        if (typeof message != 'undefined') {

            removeAllRowsFromMarquee();

            var zebra = document.getElementById("marqueeData");
            var trow;
            var trowString = "";
            trowString = trowString + message;

            //trow = $(trowString);
            //trow.prependTo(zebra);

            $("#marqueeData").html(trowString);
            $('.marquee').marquee({
                //speed in milliseconds of the marquee
                duration: 10000,
                //gap in pixels between the tickers
                gap: 50,
                //time in milliseconds before the marquee will start animating
                delayBeforeStart: 0,
                //'left' or 'right'
                direction: 'left',
                //true or false - should the marquee be duplicated to show an effect of continues flow
                duplicated: true,
                pauseOnHover: true
            });
        }


    }
    catch (e) {
        // alert("OnSuccessMarquee" + e);
    }


}



function OnErrorMarquee(request, status, error) {
    //alert("Webservice Error: " + request.statusText);
}

function removeAllRowsFromMarquee() {

    $("#marqueeData").empty();

}

var convert = function (convert) {

    return $("<span />", { html: convert }).text();

};

    

