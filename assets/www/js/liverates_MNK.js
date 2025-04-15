
function removeAllRowsFromTable() {
    //alert("11");
    $("#gvData").empty();
}

function removeAllRowsFromTable_top3() {
    //alert("11");
    $("#gvData_top3").empty();
}


function gvData_Trending() {
    $("#gvData_Trending").empty();

} 





function removeAllRowsFromTableGCSC() {
    //alert("11");
    $("#gvDataGCSC").empty();
}

function removeAllRowsFromTableGCSC_Silver() {
    //alert("11");
    $("#gvData_SilverRates_GCSC").empty();
}


function gvData_Trending() {
    $("#gvData_Trending").empty();

}



//Silver Rates
function removeAllRowsFromTable_gvData_SilverRates() {
    $("#gvData_SilverRates").empty();
}

function gvData_Trending_gvData_Trending_SilverRates() {
    $("#gvData_Trending_SilverRates").empty();

}




function gvData_Gold_Silver_INR_coinss() {
    $("#gvData_Gold_Silver_INR_coinss").empty();
}









function fnStartClock_0() {

    try {
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
        CallWebServiceFromJqueryLiveRateMessage();

        CallWebServiceFromJqueryGoldCoins();
        oInterval_1 = setInterval("CallWebServiceFromJqueryGoldCoins()", 500); //500
        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}





function fnStartClock_2() {

    try {

        //startSpinner();
        CallWebServiceFromJqueryLiveRateMessage();
        CallWebServiceFromJquerySilverCoins();
        oInterval_2 = setInterval("CallWebServiceFromJquerySilverCoins()", 500); //500
        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
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



function callBuySell(scripCode, scripName) {

    var UserID_M = localStorage.getItem("username");
    var Password_M = localStorage.getItem("password");


    if (!UserID_M && !Password_M) {
        window.location.href = "Login.html";
    }
    else {


        //alert(scripCode);
        startSpinner();

        sessionStorage.scripname = scripName;
        sessionStorage.scripcode = scripCode;

        window.location.href = "BuySell.html";

    }


}



function CallWebServiceFromJquery() {
    try {

        //alert("TemplateID" + "->" + TemplateID);

        var template = localStorage.defaultScripTemplateId;

        if (TemplateID) {
            template = TemplateID;
        }

        $.ajax({
            type: "GET",
            //            url: "http://166.62.117.175:8811/VOTSBroadcast/Services/xml/GetLiveRate",
            //            url: "http://mobiletradingbroadcast.arihantspot.com:8888/VOTSBroadcast/Services/xml/GetLiveRate",
            //url: urlLink,
            url: localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + template,
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

var oldData_Gold_silver_INR_coins;
var screenFontSize = 14;

var oldDataTop;
var oldDataGoldCoins;


var oldDataSilverCoins;
var oldDataTrending_SilverRates

var oldDataMCX;

var SwiperHeading;

var counterRefresh = 0;

function OnSuccess1(data, status) {
    //alert(data);
    try {

        var messagesDesktopp = "";
        messagesDesktopp = data.split("\n");
        //alert(messagesDesktopp.length);
        if (typeof oldData != 'undefined') {

        }
        else {
            //alert("1");
            oldData = data.toString();
        }
        var messagesOldDesktop = oldData.split("\n");

        if (typeof messagesDesktopp != 'undefined') {
            if (maxRows == 0) {
                maxRows = messagesDesktopp.length;
            }

            removeAllRowsFromTable_top3();
            removeAllRowsFromTable();



            var zebra = "";
            var zebra_top3 = document.getElementById("gvData_top3"); //Desktopppppppppppppppppppppppppppp
            zebra = document.getElementById("gvData"); //Desktopppppppppppppppppppppppppppp
            var trow = "";
            var trow_top3 = "";
            //GOLD
            var retDesktop = "";
            retDesktop = messagesDesktopp[0].split("\t");
            //alert(retDesktop.length);
            var oldRetDesktop = "";
            var trowString = "";
            var trowString_top3 = "";
            oldRetDesktop = messagesOldDesktop[0].split("\t");

            if (typeof retDesktop[2] != 'undefined') {

                trowString_top3 = trowString_top3 + "<table class=\"table1001\"><tr><td align=\"center\">";

                if (retDesktop[3] > oldRetDesktop[3]) {
                    trowString_top3 = trowString_top3 + "<table  width=\"100%\" class=\"goldd\"><tr style=\"\"><td class=\"sell\" style=\"color:#1f5970;text-align:center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\" color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\" style=\"color:#00a650;\">" + retDesktop[3] + "</span></td></tr>" +
                    //                                                "<tr>" +
                    //                                                    "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                                                "</tr>" +
                                                "</table>";
                }
                else if (retDesktop[3] < oldRetDesktop[3]) {
                    trowString_top3 = trowString_top3 + "<table  width=\"100%\" class=\"goldd\"><tr style=\"\"><td class=\"sell\" style=\"color:#1f5970;text-align:center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\" style=\"color:red;\">" + retDesktop[3] + "</span></td></tr>" +
                    //                                                "<tr>" +
                    //                                                    "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                                                "</tr>" +
                                                "</table>";
                }
                else {
                    trowString_top3 = trowString_top3 + "<table  width=\"100%\" class=\"goldd\"><tr style=\"\"><td class=\"sell\" style=\"color:#1f5970;text-align:center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\">" + retDesktop[3] + "</span></td></tr>" +
                    //                                                "<tr>" +
                    //                                                    "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                                                "</tr>" +
                                              "</table>";
                }

                trowString_top3 = trowString_top3 + "</td>";

                //}
            }
            //SILVER
            retDesktop = messagesDesktopp[1].split("\t");
            oldRetDesktop = messagesOldDesktop[1].split("\t");
            if (typeof retDesktop[2] != 'undefined') {

                if (retDesktop[3] > oldRetDesktop[3]) {

                    trowString_top3 = trowString_top3 + "<td align=\"center\"><table  width=\"100%\" class=\"goldd\"><tr><td style=\"color:#1f5970;text-align: center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\" style=\"color:#00a650;\">" + retDesktop[3] + "</span></td></tr>" +
                    //                        "<tr>" +
                    //                            "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                        "</tr>" +
                    "</table></td>";

                }
                else if (retDesktop[3] < oldRetDesktop[3]) {
                    trowString_top3 = trowString_top3 + "<td align=\"center\"><table  width=\"100%\" class=\"goldd\"><tr><td style=\"color:#1f5970;text-align: center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\" style=\"color:red;\">" + retDesktop[3] + "</span></td></tr>" +
                    //                            "<tr>" +
                    //                                "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                            "</tr>" +
                            "</table></td>";
                }
                else {
                    trowString_top3 = trowString_top3 + "<td align=\"center\"><table  width=\"100%\" class=\"goldd\"><tr><td style=\"color:#1f5970;text-align: center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\">" + retDesktop[3] + "</span></td></tr>" +
                    //                        "<tr>" +
                    //                            "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                        "</tr>" +
                    "</table></td>";
                }

            }
            //INR
            retDesktop = messagesDesktopp[2].split("\t");
            oldRetDesktop = messagesOldDesktop[2].split("\t");
            if (typeof retDesktop[2] != 'undefined') {
                var trowString_top3;
                //if (deletedScrips[2] != "0") {
                if (retDesktop[3] > oldRetDesktop[3]) {


                    trowString_top3 = trowString_top3 + "<td style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" ><tr><td style=\"color:#1f5970;text-align: center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\" style=\"color:#00a650;\">" + retDesktop[3] + "</span></td></tr>" +
                    //                                                "<tr>" +
                    //                                                    "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                                                "</tr>" +
                    "</table></td>"

                }
                else if (retDesktop[3] < oldRetDesktop[3]) {

                    trowString_top3 = trowString_top3 + "<td style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\" ><tr><td style=\"color:#1f5970;text-align: center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\" style=\"color:red;\">" + retDesktop[3] + "</span></td></tr>" +
                    //                                                "<tr>" +
                    //                                                    "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                                                "</tr>" +
                    "</table></td>";
                }
                else {

                    trowString_top3 = trowString_top3 + "<td style=\"width:33%;\" align=\"center\"><table class=\"goldd\" width=\"100%\"><tr><td style=\"color:#1f5970;text-align: center !Important;font-size: 100%;\">" + retDesktop[2] + "</td></tr><tr><td style=\"color:#FFF;text-align: center !Important;font-size: 18px;\"><span class=\"top5span\">" + retDesktop[3] + "</span></td></tr>" +
                    //                                                "<tr>" +
                    //                                                    "<td style=\"color: #000;text-align: center !Important;\"><span class=\"bloc_GS\" style=\"color:red;\">" + retDesktop[6] + "</span> | <span class=\"bloc_GS\" style=\"color:#00a650;\">" + retDesktop[5] + "</span></td>" +
                    //                                                "</tr>" +
                    "</table></td>";
                }


                //}
            }

            trowString_top3 = trowString_top3 + "</tr></table>";






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
            for (var i = 3; i < messagesDesktopp.length; i++) {
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
                                                    "<span style=\"padding: 3px;font-size: 20px; color:#00D600;font-weight:600\">" + buyLarge + "</span>" +
                                                    "<span style=\"padding: 3px;font-size: 11px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">L : " + ret[6] + "</span>" +
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
                                                    "<span style=\"padding: 3px; font-size: 20px; color:red;font-weight:600\">" + buyLarge + "</span>" +
                                                    "<span style=\"padding: 3px;font-size: 11px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">L : " + ret[6] + "</span>" +
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
                                                        "<span style=\"padding: 3px; font-size: 20px;color:#FFF;font-weight:600;\">" + buyLarge + "</span>" +
                                                        "<span style=\"padding: 3px;font-size: 11px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">L : " + ret[6] + "</span>" +
                                                        "</td>";

                    }





                    //For Sell

                    if (ret[4] > oldRet[4]) {

                        trowString = trowString +


                                                    "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px; background-color:#44ad4f;border-radius:10px;padding: 3px;color:#FFF;font-weight:500\">" + sellSmall + "</span>
                                                    "<span style=\"padding: 3px;font-size: 20px;color:#00D600;font-weight:600;\">" + sellLarge + "</span>" + //<br/><span style=\"color:#8ce08c;\">H : " + ret[5] + "</span>
                                                    "<span style=\"padding: 3px;font-size: 11px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">H : " + ret[5] + "</span>" +
                                                    "</td>";


                        //                                                    "<td><span style=\"text-align: center !Important;color:#00D600;text-align: center !Important;font-size: 10px;display: block;\">H: " + ret[5] + "</span> <span style=\"text-align: center !Important;font-size: 10px;color: red;display: block;\">L: " + ret[6] + "</span></td>" +
                        //                            /*  "<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + ret[4] + "</td> " +
                        //                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + ret[5] + "</td>" +
                        //                            */
                        //                                                "</tr> " +
                        //                                            "</table>";
                    }
                    else if (ret[4] < oldRet[4]) {

                        trowString = trowString +
                        //                                "<table width=\"100%\">"+
                        //                                    "<tr>"+
                        //                                        "<td>"+

                                                    "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //"<span style=\"font-size: 15px;background-color:#d0161e;border-radius:10px;color:#FFF;font-weight:500\">" + sellSmall + "</span>
                                                    "<span style=\"padding: 3px;font-size: 20px;color:red;font-weight:600\">" + sellLarge + "</span>" +
                                                    "<span style=\"padding: 3px;font-size: 11px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">H : " + ret[5] + "</span>" +
                                                    "</td>";


                        //                                                    "<td><span style=\"text-align: center !Important;color:#00D600;text-align: center !Important;font-size: 10px;display: block;\">H: " + ret[5] + "</span> <span style=\"text-align: center !Important;font-size: 10px;color: red;display: block;\">L: " + ret[6] + "</span></td>" +
                        //                        /*"<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + ret[4] + "</td> " +
                        //                        "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + ret[5] + "</td>" +
                        //                        */
                        //                                                  "</tr>" +
                        //                                              "</table>";
                    }
                    else {
                        trowString = trowString +
                        //                                    "<table width=\"100%\">"+
                        //                                        "<tr>"+
                        //                                            "<td>"+

                                                        "<td style=\"width:25%;text-align: center !Important;padding-top: 0px;\">" +
                        //<span style=\"font-size: 15px; padding:1px 5px;padding: 3px;font-weight:500;color:black\">" + sellSmall + "</span>
                                                        "<span style=\"padding: 3px;font-size: 20px; padding:1px 5px;font-weight:600;color:#FFF\">" + sellLarge + "</span>" +
                                                        "<span style=\"padding: 3px;font-size: 11px;border-radius:10px;color:#FFF;font-weight:600;display: " + displayy + ";\">H : " + ret[5] + "</span>" +
                                                        "</td>";

                        //                                                        "<td><span style=\"text-align: center !Important;color:#00D600;text-align: center !Important;font-size: 10px;display: block;\">H: " + ret[5] + "</span> <span style=\"text-align: center !Important;font-size: 10px;color: red;display: block;\">L: " + ret[6] + "</span></td>" +
                        //                            /* "<td style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + ret[4] + "</td> " +
                        //                            "<td style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + ret[5] + "</td>" +
                        //                            */
                        //                                                     "</tr>" +
                        //                                                 "</table>";
                    }


                    trowString = trowString + "</tr></table>";

                    //trowString = trowString + "</td></tr></table>";
                    //trowString = trowString + "<td><span style=\"width:15%;text-align: center !Important;font-size: large;color:#00D600;\">" + ret[4] +"</span> <span style=\"width:15%;text-align: center !Important;font-size: large;color:red;\">" + ret[5] + "</span></td>" +













                    //}

                }
                oldData = data.toString();

            }
            trowString = trowString + "</td></tr></table>"; //</td></tr>









            trow = $(trowString);
            trow.prependTo(zebra);



            trow_top3 = $(trowString_top3);
            trow_top3.prependTo(zebra_top3);



        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }
        oldData = data.toString();
        //OnSuccessMobileTop(data, status);

    }
    catch (e) {
        //alert("OnSuccess" + e);
        oldData = data.toString();
        //alert(oldData);
    }





}



function OnError1(request, status, error) {
    //alert("Webservice Error: " + request.statusText + " " + error);
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


//function CallWebServiceFromJqueryGoldCoins() {
//    try {
//        //        $.ajax({
//        //            type: "GET",
//        //            url: "http://166.62.101.168:8822/VOTSBroadcast/Services/xml/GetLiveRate",
//        //            dataType: "text",
//        //            crossDomain: true,
//        //            processData: false,
//        //            success: OnSuccessGoldCoins,
//        //            error: OnErrorGoldCoins,
//        //            cache: false
//        //        });

//        $.ajax({
//            type: "GET",
//            //            url: "http://website.ronakgold.com:" + GoldCoinsPort + "/VOTSBroadcast/Services/xml/GetLiveRate",
//            url: "http://mobiletradingbroadcast.arihantspot.com:8999/VOTSBroadcast/Services/xml/GetLiveRate",
//            dataType: "text",
//            crossDomain: true,
//            processData: false,
//            success: OnSuccessGoldCoins,
//            error: OnErrorGoldCoins,
//            cache: false
//        });


//    }
//    catch (e) {
//        // alert("CallWebServiceFromJquery " + e);
//    }


//}


////Gold Coinsssssssssssssssssssssssssss
//function OnSuccessGoldCoins(data, status) {
//    //alert(data);
//    try {

//        stopSpinner();
//        data = data.replace(/"/g, "");
//        var messages = data.split("\\u000d\\u000a");



//        if (typeof oldDataGoldCoins != 'undefined') {

//        }
//        else {
//            //alert("1");
//            oldDataGoldCoins = data.toString();
//        }
//        var messagesOld = oldDataGoldCoins.split("\\u000d\\u000a");

//        if (typeof messages != 'undefined') {
//            if (maxRows == 0) {
//                maxRows = messages.length;
//            }

//            removeAllRowsFromTableGoldCoins_Coins_img();
//            removeAllRowsFromTableGoldCoins_Coins_Title();
//            removeAllRowsFromTableGoldCoins_Coins_Rates();


//            removeAllRowsFromTableGoldCoins_Coins_img_995();
//            removeAllRowsFromTableGoldCoins_Coins_Title_995();
//            removeAllRowsFromTableGoldCoins_Coins_Rates_995();



//            var zebra = document.getElementById("Coins_img");
//            var zebra2 = document.getElementById("Coins_Title");
//            var zebra3 = document.getElementById("Coins_Rates");


//            var zebra4 = document.getElementById("995_Coins_img");
//            var zebra5 = document.getElementById("995_Coins_Title");
//            var zebra6 = document.getElementById("995_Coins_Rates");


//            var trow;
//            var trow2;
//            var trow3;

//            var trow4;
//            var trow5;
//            var trow6;


//            //            var trowString = "<table width=\"100%\">" +
//            //                                "<tr style=\"color:#FFF;font-size: 80%;text-align: center !Important; background-color: " + Color_ScriptColor + ";\" align=\"center\">" + //#FFD700
//            //                                    "<td style=\"text-align: center !Important;width:33%;\">995</td>" +
//            //                                    "<td style=\"text-align: center !Important;width:33%;\">Gold Coins</td>" +
//            //                                    "<td style=\"text-align: center !Important;width:33%;\">999</td>" +
//            //                                 "</tr>";


//            var trowString = "";
//            var trowString2 = "";
//            var trowString3 = "";


//            var trowString4 = "";
//            var trowString5 = "";
//            var trowString6 = "";


//            for (var i = 0; i < messages.length; i++) {
//                //var ret = jQuery.parseJSON(messages[i]);
//                var ret = messages[i].split("\\u0009");
//                var oldRet;

//                oldRet = messagesOld[i].split("\\u0009");
//                if (typeof ret[1] != 'undefined') {


//                    // For Coins Img
//                    trowString = trowString + "<tr>" +
//                                                    "<td class=\"color-white\" style=\"text-align: center !Important;background-color:" + Color_ScriptColor + " !Important;\"><img class=\"coins_imgg\" src=\"http://arihantspot.com/coins/" + ret[0] + ".gif\"/></td>" +
//                                                "</tr>";


//                    // For Coins Title
//                    trowString2 = trowString2 + "<tr>" +
//                                                    "<td class=\"color-white\" style=\"text-align: center !Important;background-color:" + Color_ScriptColor + " !Important;\">" + ret[0] + "</td>" +
//                                                "</tr>";



//                    // For coins Rates
//                    if (ret[2] > oldRet[2]) {

//                        trowString3 = trowString3 + "<tr>" +
//                                                        "<td class=\"color-white\" style=\"text-align: center !Important;background-color:#00D600 !Important;\">" + ret[2] + "</td>" +
//                                                    "</tr>";
//                    }
//                    else if (ret[2] < oldRet[2]) {

//                        trowString3 = trowString3 + "<tr>" +
//                                                        "<td class=\"color-white\" style=\"font-size: 100%;text-align: center !Important;background-color:red !Important;\">" + ret[2] + "</td>" +
//                                                    "</tr>";
//                    }
//                    else {

//                        trowString3 = trowString3 + "<tr>" +
//                                                        "<td class=\"color-white\" style=\"font-size: 100%;text-align: center !Important;background-color:" + Color_ScriptColor + " !Important;\">" + ret[2] + "</td>" +
//                                                    "</tr>";
//                    }






//                    // For 995 #################
//                    // For Coins Img
//                    trowString4 = trowString4 + "<tr>" +
//                                                    "<td class=\"color-white\" style=\"text-align: center !Important;background-color:" + Color_ScriptColor + " !Important;\"><img class=\"coins_imgg\" src=\"http://arihantspot.com/coins/995 " + ret[0] + ".gif\"/></td>" +
//                                                "</tr>";


//                    // For Coins Title
//                    trowString5 = trowString5 + "<tr>" +
//                                                    "<td class=\"color-white\" style=\"text-align: center !Important;background-color:" + Color_ScriptColor + " !Important;height: 117px;\">" + ret[0] + "</td>" +
//                                                "</tr>";



//                    // For coins Rates
//                    if (ret[1] > oldRet[1]) {

//                        trowString6 = trowString6 + "<tr>" +
//                                                        "<td class=\"color-white\" style=\"text-align: center !Important;background-color:#00D600 !Important;height: 117px;font-weight: 600;font-size: 19px !important;\">" + ret[1] + "</td>" +
//                                                    "</tr>";
//                    }
//                    else if (ret[1] < oldRet[1]) {

//                        trowString6 = trowString6 + "<tr>" +
//                                                        "<td class=\"color-white\" style=\"font-size: 100%;text-align: center !Important;background-color:red !Important;height: 117px;font-weight: 600;font-size: 19px !important;\">" + ret[1] + "</td>" +
//                                                    "</tr>";
//                    }
//                    else {

//                        trowString6 = trowString6 + "<tr>" +
//                                                        "<td class=\"color-white\" style=\"font-size: 100%;text-align: center !Important;background-color:" + Color_ScriptColor + " !Important;height: 117px;font-weight: 600;font-size: 19px !important;\">" + ret[1] + "</td>" +
//                                                    "</tr>";
//                    }






//                }
//                oldData01 = data.toString();

//            }

//            //trowString = trowString + "<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>";



//            trow = $(trowString);
//            trow.prependTo(zebra);

//            trow2 = $(trowString2);
//            trow2.prependTo(zebra2);

//            trow3 = $(trowString3);
//            trow3.prependTo(zebra3);


//            //995
//            trow4 = $(trowString4);
//            trow4.prependTo(zebra4);

//            trow5 = $(trowString5);
//            trow5.prependTo(zebra5);

//            trow6 = $(trowString6);
//            trow6.prependTo(zebra6);




//        }

//        if (counterRefresh == 0) {
//            //myScroll.refresh();
//            counterRefresh = counterRefresh + 1;
//        }
//        oldDataGoldCoins = data.toString();
//    }
//    catch (e) {
//        //alert("OnSuccessGoldCoins " + e);
//        oldDataGoldCoins = data.toString();
//    }


//}



//function OnErrorGoldCoins(request, status, error) {
//    // alert("Webservice Error: " + request.statusText);
//}



//////gvdata Coinsssssssssssssssssssssssssss
////function OnSuccessGoldCoins(data, status) {
////    //alert(data);
////    try {

////        var messages = data.split("\\u000d\\u000a");


////        if (typeof oldDataGoldCoins != 'undefined') {

////        }
////        else {
////            oldDataGoldCoins = data.toString();
////        }
////        var messagesOld = oldDataGoldCoins.split("\\u000d\\u000a");

////        if (typeof messages != 'undefined') {
////            if (maxRows == 0) {
////                maxRows = messages.length;
////            }

////            removeAllRowsFromTableGoldCoins();
////            var zebraCoins = document.getElementById("gvdataCoins");
////            var trow;

////            var trowString = "<tr>" +
////	                            "<td width=\"50%\" style=\"padding: 15px 0;color:#e1aa4f;font-weight: 700; border-bottom: 0px solid #3a436c;\">GOLD</td>" +
////	                            "<td width=\"50%\" style=\"padding: 15px 0;color:#e1aa4f;font-weight: 700;border-bottom: 0px solid #3a436c;\">SILVER</td>" +
////                            "</tr>";

////            for (var i = 1; i < messages.length; i++) {
////                //var ret = jQuery.parseJSON(messages[i]);
////                var ret = messages[i].split("\\u0009");
////                var oldRet;

////                oldRet = messagesOld[i].split("\\u0009");
////                if (typeof ret[1] != 'undefined') {

////                    //alert(ret[1] + '---->' + oldRet[1]);

////                    trowString = trowString + "<tr>" +
////	                                            "<td>" +
////		                                            "<span class=\"Coins_Child_Label\">" + ret[1] + "</span>";

////                    if (ret[2] > oldRet[2]) {

////                        trowString = trowString + "<span class=\"Coins_Child_Rates\" style=\"color:#00ce7c\">" + ret[2] + "</span>" +
////	                                                "</td>";
////                    }
////                    else if (ret[2] < oldRet[2]) {

////                        trowString = trowString + "<span class=\"Coins_Child_Rates\" style=\"color:#cc0404\">" + ret[2] + "</span>" +
////	                                                "</td>";
////                    }
////                    else {

////                        trowString = trowString + "<span class=\"Coins_Child_Rates\" >" + ret[2] + "</span>" +
////	                                                "</td>";
////                    }
////                    //alert("First " + ret[1] +" "+ ret[2]);

////                    //Next td
////                    i = i + 1;
////                    ret = messages[i].split("\\u0009");

////                    oldRet = messagesOld[i].split("\\u0009");

////                    trowString = trowString + "<td>" +
////		                                            "<span class=\"Coins_Child_Label\">" + ret[1] + "</span>";

////                    if (ret[2] > oldRet[2]) {

////                        trowString = trowString + "<span class=\"Coins_Child_Rates\" style=\"color:#00ce7c\">" + ret[2] + "</span>" +
////	                                                "</td></tr>";
////                    }
////                    else if (ret[2] < oldRet[2]) {

////                        trowString = trowString + "<span class=\"Coins_Child_Rates\" style=\"color:#cc0404\">" + ret[2] + "</span>" +
////	                                                "</td></tr>";
////                    }
////                    else {

////                        trowString = trowString + "<span class=\"Coins_Child_Rates\" >" + ret[2] + "</span>" +
////	                                                "</td></tr>";
////                    }
////                    //alert("Second " + ret[1] +" "+ ret[2]);



////                }




////            }
////            //trowString = trowString + "</table><br/><br/><br/>";
////            trow = $(trowString);
////            trow.prependTo(zebraCoins);
////            oldDataGoldCoins = data.toString();
////        }

////        if (counterRefresh == 0) {
////            //myScroll.refresh();
////            counterRefresh = counterRefresh + 1;
////        }

////    }
////    catch (e) {
////        //alert("OnSuccessGoldCoins " + e);
////        oldDataGoldCoins = data.toString();
////    }


////}


////function OnErrorGoldCoins(request, status, error) {
////    // alert("Webservice Error: " + request.statusText);
////}



//////End Coins













$(document).ready(function () {
    //fnStartClock();
});




function CallWebServiceFromJqueryMarquee() {
    try {
        //alert("CallWebServiceFromJqueryMarquee");
        $.ajax({
            type: "GET",
            //            url: "http://message.arihantspot.com/WebServiceGetMarquee.asmx/getMarquee",
            url: localStorage.webPanel + "/WebServiceGetMarquee.asmx/getMarquee?username=" + localStorage.appnameWithMiniadminId,
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

        var message = data.split("|");

        if (typeof message != 'undefined') {

            removeAllRowsFromMarquee();

            var zebra = document.getElementById("marqueeData");
            var trow;
            var trowString = "";
            trowString = trowString + convert(message[1]);

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

    

