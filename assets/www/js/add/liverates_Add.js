
function removeAllRowsFromTable() {
    //alert("11");
    $("#gvData_Trending_Fetch").empty();
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


//function removeAllRowsFromTableGoldCoins() {
//    $("#gvdataCoins").empty();
//}

function removeAllRowsFromTableGoldCoins_Coins_img() {
    $("#Coins_img").empty();
}

function removeAllRowsFromTableGoldCoins_Coins_Title() {
    $("#Coins_Title").empty();
}

function removeAllRowsFromTableGoldCoins_Coins_Rates() {
    $("#Coins_Rates").empty();
}


function removeAllRowsFromTableGoldCoins_Coins_img_995() {
    $("#995_Coins_img").empty();
}

function removeAllRowsFromTableGoldCoins_Coins_Title_995() {
    $("#995_Coins_Title").empty();
}

function removeAllRowsFromTableGoldCoins_Coins_Rates_995() {
    $("#995_Coins_Rates").empty();
}






//Start fetch (Table in Portfolio)
function gvData_Trending_Fetch() {
    $("#gvData_Trending_Fetch").empty();
}

function gvdataCoins_Fetch() {
    $("#gvdataCoins_Fetch").empty();
}

//End Fetch


function gvDataFromPopup() {
    $("#gvDataFromPopup").empty();
}

var Main_Data = "";


function fnStartClock_0() {

    try {
        //alert("0");
        //		startSpinner();
        //CallWebServiceFromJqueryLiveRateMessage();
        //startSpinner();
        //alert("fnStartClock");       
        //        oInterval = setInterval("refreshData()", 500); //500
        //        oInterval = setInterval("refreshData()", 500); //500
        CallWebServiceFromJquery();
        oInterval_0 = setInterval("CallWebServiceFromJquery()", 500); //500  
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





//function callBuySell(scripCode, scripName) {

//    var UserID_M = localStorage.getItem("username");
//    var Password_M = localStorage.getItem("password");


//    if (!UserID_M && !Password_M) {
//        window.location.href = "Login.html";
//    }
//    else {


//        //alert(scripCode);
//        startSpinner();

//        sessionStorage.scripname = scripName;
//        sessionStorage.scripcode = scripCode;

//        window.location.href = "BuySell.html";

//    }


//}



function CallWebServiceFromJquery() {
    try {

        var template = localStorage.defaultScripTemplateId;

        if (TemplateID) {
            template = TemplateID;
        }

        //alert(localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + template);

        $.ajax({
            type: "GET",
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
        //updateTime();
        //stopSpinner();


        Main_Data = data; // Globle Declare variable
        localStorage.setItem("Main_Data_Index", Main_Data);

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

            removeAllRowsFromTable();
            var zebra = "";
            zebra = document.getElementById("gvData_Trending_Fetch"); //Desktopppppppppppppppppppppppppppp
            var trow = "";

            var trowString = "";
            


            trowString = trowString + "<table width=\"100%\"> " +
//                                                  " <tr> " +
//                                                     " <td> " +
//                                                         "<table  width=\"100%\"> " +
//                                                            "<tr>" +
//            //                                                               "<td style=\"width:40%;\">" +

//            //                                                               "</td>" +
//                                                               "<td style=\"width:50%; text-align: center !Important\" >" +
//                                                                    "<span style=\"font-weight:600;color:#FFF;\">Symbol</span>" +
//                                                               "</td>" +

//                                                                "<td style=\"width:50%; text-align: center !Important\" >" +
//                                                                    "<span style=\"font-weight:600;color:#FFF;\">Price</span>" +
//                                                               "</td>" +

//            //                                                               "<td style=\"width:25%; text-align: center !Important\" >" +
//            //                                                                    "<span style=\"font-weight:600;color:#FFF;\">High | Low</span>" +
//            //                                                               "</td>" +

//                                                             "</tr>" +
//                                                           "</table>"
//            "</td>" +
//                                                        "</tr>" +
            //Second Row
                                                     " <tr> " +
                                                  " <td> "

            for (var i = 0; i < messagesDesktopp.length; i++) {
                //var retDesktop = jQuery.parseJSON(messages[i]);
                var retDesktop = messagesDesktopp[i].split("\t");
                var oldRetDesktop;
                
                oldRetDesktop = messagesOldDesktop[i].split("\t");
                if (typeof retDesktop[2] != 'undefined') {

                    //if (deletedScrips[i] != "0") {

                    if (retDesktop[3] > oldRetDesktop[3]) {

                        trowString = trowString +

                                            "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"border-bottom: 1px solid #d0ad6a;\" onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\"> " +
                                                "<tr style=\"text-align: center;\"> " +
                                                    "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;font-size:16px\">" + retDesktop[2] + "</td>" +
                        //"<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:#fff;\">" + retDesktop[3] + "</td>"
                                                        "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;\"><span style=\"color:white;background:#00D600;font-size: 30px;\">" + retDesktop[3] + "</span></td>";

                    }
                    else if (retDesktop[3] < oldRetDesktop[3]) {

                        trowString = trowString +
                        //                                "<table width=\"100%\">"+
                        //                                    "<tr>"+
                        //                                        "<td>"+
                                            "<table class=\"res_mob_font_width\" width=\"100%\" style=\"border-bottom: 1px solid #d0ad6a;\" onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\">" +
                                                "<tr style=\"text-align: center;\">" +
                                                    "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;font-size:16px\">" + retDesktop[2] + "</td>" +
                        //"<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:#fff;\">" + retDesktop[3] + "</td>"
                                                        "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;\"><span style=\"color:white;background:red;font-size: 30px;\">" + retDesktop[3] + "</span></td>";

                    }
                    else {
                        trowString = trowString +
                        //                                    "<table width=\"100%\">"+
                        //                                        "<tr>"+
                        //                                            "<td>"+
                                                "<table class=\"res_mob_font_width\" width=\"100%\" style=\"border-bottom: 1px solid #d0ad6a;\" onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\">" +
                                                    "<tr style=\"text-align: center;\">" +
                        //"<td class=\"buy_sell_label\" style=\"width:40%;text-align: left !Important;font-size: 16px;\">" + retDesktop[2] + "</td>" +
                                                        "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;font-size:16px\">" + retDesktop[2] + "</td>" +
                        //"<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:#fff;\">" + retDesktop[3] + "</td>"
                                                        "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;\"><span style=\"color:white;font-size: 30px;\">" + retDesktop[3] + "</span></td>";

                    }

                    



                    //                    //For Sell

                    //                    if (retDesktop[4] > oldRetDesktop[4]) {

                    //                        trowString = trowString +


                    //                                                    "<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:#00D600;\">" + retDesktop[4] + "</td> " +
                    //                                                    "<td style=\"width:25%;text-align: center !Important;font-size: 12px;color:#FFF;\"><span class=\"bloc\" style=\"color:#00D600;\">" + retDesktop[5] + "</span> <span class=\"vis\">|</span> <span class=\"bloc\" style=\"color:red;\">" + retDesktop[5] + "</span></td> " +


                    //                                                "</tr> " +
                    //                                            "</table>"
                    //                    }
                    //                    else if (retDesktop[4] < oldRetDesktop[4]) {

                    //                        trowString = trowString +
                    //                        //                                "<table width=\"100%\">"+
                    //                        //                                    "<tr>"+
                    //                        //                                        "<td>"+

                    //                                                    "<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:red;\">" + retDesktop[4] + "</td>" +
                    //                                                    "<td style=\"width:25%;text-align: center !Important;font-size: 12px;color:#FFF;\"><span class=\"bloc\" style=\"color:#00D600;\">" + retDesktop[5] + "</span> <span class=\"vis\">|</span> <span class=\"bloc\" style=\"color:red;\">" + retDesktop[5] + "</span></td> " +

                    //                                                  "</tr>" +
                    //                                              "</table>"
                    //                    }
                    //                    else {
                    //                        trowString = trowString +
                    //                        //                                    "<table width=\"100%\">"+
                    //                        //                                        "<tr>"+
                    //                        //                                            "<td>"+

                    //                                                        "<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:#fff;\">" + retDesktop[4] + "</td>" +
                    //                                                        "<td style=\"width:25%;text-align: center !Important;font-size: 12px;color:#FFF;\"><span class=\"bloc\" style=\"color:#00D600;\">" + retDesktop[5] + "</span> <span class=\"vis\">|</span> <span class=\"bloc\" style=\"color:red;\">" + retDesktop[5] + "</span></td> " +

                    //                                                     "</tr>" +
                    //                                                 "</table>"
                    //                    }




                    //}

                }
                oldData = data.toString();

            }
            trowString = trowString + "</table>"; //</td></tr>
            trow = $(trowString);
            trow.prependTo(zebra);

        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }
        oldData = data.toString();
        //OnSuccessMobileTop(data, status);


        Portfolio_GoldSilverINR(data, status); //OnSuccess2 Function 2



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








$(document).ready(function () {
    //fnStartClock();
});


