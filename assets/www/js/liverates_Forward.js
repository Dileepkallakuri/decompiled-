function gvData_Gold_Silver_INR_MCX() {
    $("#gvData_Gold_Silver_INR_MCX").empty();
}

function removeAllRowsFromTableGoldMCX() {
    $("#gvdata_Table_MCX").empty();
}








function fnStartClock_0() {

    try {
        //startSpinner();

        CallWebServiceFromJqueryMarquee();
        var timerMarquee = setInterval("CallWebServiceFromJqueryMarquee()", 30000); //30000

        oInterval_1 = setInterval("CallWebServiceFromJqueryMCX()", 500); //500
        setInterval("resetLiveRateTable_Silver()", 10000); //500  


        //float_Message();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}




function resetLiveRateTable() {
    showOnce = "0";
}
function resetLiveRateTable_Silver() {
    showOnce_silver = "0";
}


function refreshData() {
    //alert("refreshData");
    CallWebServiceFromJquery();

    CallWebServiceFromJqueryGoldCoins();

    CallWebServiceFromJquerySilverCoins();
}

function fnStopClock_1() {
    try {
        clearInterval(oInterval_1);
    }
    catch (e) {
        //  alert("fnStopClock" + e);
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
var showOnce_silver = "0";



// ###############################################  Start MCX #####################################################
function CallWebServiceFromJqueryMCX() {
    try {


        if (IsForwardStarted == "True" && IsRunningStatusForward == "True") {


            $.ajax({
                type: "GET",                                
                url: localStorage.ipAddressBCast2 + ":" + localStorage.step3StreamingPort2 + "/VOTSBroadcast/Services/xml/GetLiveRate",
                dataType: "text",
                crossDomain: true,
                processData: false,
                success: OnSuccessGoldMCX,
                error: OnErrorGoldMCX,
                cache: false
            });

        }

    }
    catch (e) {
        alert("CallWebServiceFromJquery " + e);
    }


}


//Chi Bhai Start
var isMCXOnlyLTP = 'true';
if (window.localStorage.getItem("isMCXOnlyLTP")) {
    isMCXOnlyLTP = localStorage.getItem("isMCXOnlyLTP");
}
function toggleMCX(doMCXOnlyLTP) {

    showOnce_silver = "0";
    isMCXOnlyLTP = doMCXOnlyLTP;
    window.localStorage.setItem("isMCXOnlyLTP", isMCXOnlyLTP);

}

function OnSuccessGoldMCX(data, status) {
    stopSpinner();

    if (IsForwardStarted == "False") {
        return;
    }

    //console.log(isMCXOnlyLTP);
    if (isMCXOnlyLTP == 'true') {
        OnSuccessGoldMCXLTP(data, status);

    }
    else {

        OnSuccessGoldMCXDetail(data, status);
    }

}








function updateOnlyData_Silver(data) {
    try {



        var messages = data.split("\\u000d\\u000a");
        //var messagesOld = oldData.split("\\u000d\\u000a");

        if (typeof oldDataMCX_OnSuccessGoldMCXLTP != 'undefined') {
        }
        else {
            oldDataMCX_OnSuccessGoldMCXLTP = data.toString();
        }
        var messagesOld = oldDataMCX_OnSuccessGoldMCXLTP.split("\\u000d\\u000a");



        //        for (var i = 0; i < 3; i++) {


        //            var ret = messages[i].split("\\u0009");
        //            var oldRet = messagesOld[i].split("\\u0009");

        //            var ret_copy = ret[1];
        //            ret_copy = ret[1].replace(/ +/g, "");
        //            ret_copy = ret_copy.replace('$', "");



        //            //$('#' + ret[1] + 'SELL').html(ret[3]);
        //            var classs;

        //            //For Rates
        //            if (ret[2] > oldRet[2]) {

        //                trowString = "<span style=\"color:#00ce7c;\">" + ret[2] + "</span>";

        //                scripColor_Gold[ret[2]] = "#00ce7c";

        //                $('#' + ret_copy + 'BARS').html(trowString);

        //            }
        //            else if (ret[2] < oldRet[2]) {

        //                trowString = "<span style=\"color:#cc0404;\">" + ret[2] + "</span>";

        //                scripColor_Gold[ret[2]] = "#cc0404";

        //                $('#' + ret_copy + 'BARS').html(trowString);

        //            }
        //            else {

        //                trowString = "<span style=\"color:" + scripColor_Gold[ret[2]] + "\">" + ret[2] + "</span>";

        //                $('#' + ret_copy + 'BARS').html(trowString);

        //            }

        //            oldData = data.toString();


        //        }



        var trowString = "";
        //alert(messages.length);
        for (var i = 3; i < messages.length - 1; i++) {


            var ret = messages[i].split("\\u0009");
            var oldRet = messagesOld[i].split("\\u0009");

            var ret_copy = ret[1];

            //alert(ret_copy);

            ret_copy = ret[1].replace(/ +/g, "");

            //alert(ret_copy + "  222222");

            //ret_copy = ret_copy.replace('$', "");
            //alert(ret_copy);
            //$('#' + ret[1] + 'BUY').html(ret[3]);

            //For BUY
            if (ret[3] > oldRet[3]) {

                trowString = "<span style=\"color:#00ce7c;font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span>";
                scripColorMCX[ret[1]] = "#cc0404";

                $('#' + ret_copy + i + 'FORWARD101').html(trowString);
                //document.getElementById(ret_copy + 'BARS101').innerHTML = trowString;
            }
            else if (ret[3] < oldRet[3]) {

                trowString = "<span style=\"color:#cc0404;font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span>";
                scripColorMCX[ret[1]] = "#cc0404";

                $('#' + ret_copy + i + 'FORWARD101').html(trowString);
                //document.getElementById(ret_copy + 'BARS101').innerHTML = trowString;
            }
            else {

                trowString = "<span style=\"color:" + scripColorMCX[ret[1]] + ";font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span>";

                $('#' + ret_copy + i + 'FORWARD101').html(trowString);
                //document.getElementById(ret_copy + 'BARS101').innerHTML = trowString;
            }
            //////END Buy


            //oldDataTrending = data.toString();

        }


        oldDataMCX_OnSuccessGoldMCXLTP = data.toString();


    }
    catch (e) {
        alert("OnSuccess Mnk" + e);
    }
}









var oldDataMCX_OnSuccessGoldMCXLTP;
var scripColorMCX = [];
function OnSuccessGoldMCXLTP(data, status) {
    //alert(data);
    try {

        if (showOnce_silver == "0") {
            showOnce_silver = "1";
        }
        else {

            updateOnlyData_Silver(data);
            return;
        }


        IsRunningStatusForward = "False";

        var messagesDesktopp = "";
        messagesDesktopp = data.split("\\u000d\\u000a");

        if (typeof oldDataMCX_OnSuccessGoldMCXLTP != 'undefined') {
        }
        else {
            oldDataMCX_OnSuccessGoldMCXLTP = data.toString();
        }
        var messagesOldDesktop = oldDataMCX_OnSuccessGoldMCXLTP.split("\\u000d\\u000a");

        if (typeof messagesDesktopp != 'undefined') {
            if (maxRows == 0) {
                maxRows = messagesDesktopp.length;
            }

            removeAllRowsFromTableGoldMCX();
            var zebra_OnSuccessGoldMCXLTP = "";
            zebra_OnSuccessGoldMCXLTP = document.getElementById("gvdata_Table_MCX"); //Trending Lower Portion
            var trow_OnSuccessGoldMCXLTP = "";
            var trowString = "<tr>" +
	                            "<td style=\"padding: 5px 0px 0px;padding-left:2%;text-align:left\">Features</td>" +
								"<td style=\"padding: 5px 0px 0px;padding-right:3%;text-align:right\"><a onclick=\"javascript:toggleMCX('false')\"><i class=\"fa fa-th-large\" style=\"color:#612241;font-size:130%;\" aria-hidden=\"true\"></i></a></td>" +
                            "</tr>";


            var retDesktop = "";
            retDesktop = messagesDesktopp[0].split("\\u0009");

            if (typeof retDesktop[1] != 'undefined') {
                //alert(retDesktop[3] + '-->' + oldRetDesktop[3]);
                for (var i = 3; i < messagesDesktopp.length - 1; i++) {

                    //var ret = jQuery.parseJSON(messages[i]);
                    var ret = messagesDesktopp[i].split("\\u0009");
                    var oldRet;

                    var ret_copy = ret[1];
                    ret_copy = ret[1].replace(/ +/g, "");
                    //ret_copy = ret_copy.replace('$', "");
                    //alert(ret_copy);


                    oldRet = messagesOldDesktop[i].split("\\u0009");
                    if (typeof ret[1] != 'undefined') {
                        var openString = "";

                        trowString = trowString + "<tr onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "');\">" +
				                                    "<td style=\"padding: 3px 0px;\" colspan=\"2\">" +
					                                    "<table class=\"Trending_Table_Child3\" width=\"100%\" border=\"0\">";


                        //For Rates
                        if (ret[3] > oldRet[3]) {

                            trowString = trowString + "<tr>" +
                            //													"<td rowspan=\"2\" width=\"6%\" style=\"padding-left:15px;padding-right:10px;\">" +
                            //								                        "<i class=\"fa fa-arrow-circle-o-up\" style=\"color:#06cea7;font-size:130%;\" aria-hidden=\"true\"></i>" +
                            //							                        "</td>" +
							                        "<td align=\"left\" style=\"padding-top: 1px;padding-left:15px;font-size:" + Change_ScriptNameFont + "\">" + ret[1] + "</td>" +
							                        "<td id=\"" + ret_copy + i + "FORWARD101\" align=\"right\" style=\"padding-top: 1px;padding-right:15px;\"><span style=\"color:#00ce7c;font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span></td>" +
						                        "</tr>";

                            scripColorMCX[ret[1]] = "#00ce7c";
                        }
                        else if (ret[3] < oldRet[3]) {

                            trowString = trowString + "<tr>" +
                            //													"<td rowspan=\"2\" width=\"6%\" style=\"padding-left:15px;padding-right:10px;\">" +
                            //								                        "<i class=\"fa fa-arrow-circle-o-down\" style=\"color:#fe0000;font-size:130%;\" aria-hidden=\"true\"></i>" +
                            //							                        "</td>" +
							                        "<td align=\"left\" style=\"padding-top: 1px;padding-left:15px;font-size:" + Change_ScriptNameFont + "\">" + ret[1] + "</td>" +
							                        "<td id=\"" + ret_copy + i + "FORWARD101\" align=\"right\" style=\"padding-top: 1px;padding-right:15px;\"><span style=\"color:#cc0404;font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span></td>" +
						                        "</tr>";

                            scripColorMCX[ret[1]] = "#cc0404";
                        }
                        else {

                            //                            var icon = "fa fa-arrow-circle-o-up";
                            if (scripColorMCX[ret[1]] == undefined) {
                                scripColorMCX[ret[1]] = Color_ForeColor; // "#ffffff";
                            }
                            //                            else if (scripColorMCX[ret[1]].length != 7) {
                            //                                scripColorMCX[ret[1]] = "#ffffff";
                            //                            }
                            //                            else if (scripColorMCX[ret[1]] == "#06cea7") {

                            //                                icon = "fa fa-arrow-circle-o-up";

                            //                            }
                            //                            else if (scripColorMCX[ret[1]] == "#fe0000") {
                            //                                icon = "fa fa-arrow-circle-o-down";

                            //                            }

                            trowString = trowString + "<tr>" +
                            //													"<td rowspan=\"2\" width=\"6%\" style=\"padding-left:15px;padding-right:10px;\">" +
                            //								                        "<i class=\"" + icon + "\" style=\"color:" + scripColorMCX[ret[1]] + ";font-size:130%;\" aria-hidden=\"true\"></i>" +
                            //							                        "</td>" +
							                        "<td align=\"left\" style=\"padding-top: 1px;padding-left:15px;font-size:" + Change_ScriptNameFont + "\">" + ret[1] + "</td>" +
							                        "<td id=\"" + ret_copy + i + "FORWARD101\" align=\"right\" style=\"padding-top: 1px;padding-right:15px;\"><span style=\"color:" + scripColorMCX[ret[1]] + ";font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span></td>" +
						                        "</tr>";
                        }

                        /*
                        trowString = trowString + "<tr>" +
                        "<td class=\"font_Trending_HLC\" align=\"left\" style=\"padding-bottom: 15px;\">" +
                        "<span class=\"Trading_High_Low_Close_Box High-Green\">H: " + ret[3] + "</span>" +
                        "<span class=\"Trading_High_Low_Close_Box Low-Red\">L: " + ret[4] + "</span>" +
                        "<span class=\"Trading_High_Low_Close_Box\">P.Close: " + ret[5] + "</span>" +
                        "</td>" +
                        "<td class=\"font_Trending_HLC\" align=\"right\" style=\"padding-bottom: 15px;\">" +
                        "<span style=\"color:#858ead\">" + ret[6] + "</span>" +
                        "</td>" +
                        "</tr>";
                        */
                        trowString = trowString + "</table>" +
				                                "</td>" +
				                                "</tr>";

                    } // End If


                } // End For


            } //End If



        } // End -> if (typeof messagesDesktopp != 'undefined') {



        trow_OnSuccessGoldMCXLTP = $(trowString);
        trow_OnSuccessGoldMCXLTP.prependTo(zebra_OnSuccessGoldMCXLTP);

        IsRunningStatusForward = "True";


        //alert(oldData_Gold_silver_INR_coins);
        //oldDataMCX_OnSuccessGoldMCXLTP = data.toString();

        Success3_MCX_Portfolio(data, status); //OnSuccess2 Function 2 MNKKK

    }
    catch (e) {
        alert("OnSuccess : " + e);
        oldDataMCX_OnSuccessGoldMCXLTP = data.toString();
        //alert(oldData_Gold_silver_INR_coins);
    }


}
//MCX End Chi Bhai



var scripColor_OnSuccessGoldMCXDetail_One = [];
var scripColor_OnSuccessGoldMCXDetail_Two = [];

var scripColor_OnSuccessGoldMCXDetail_Three = [];
var scripColor_OnSuccessGoldMCXDetail_Four = [];

//MCX Start Monank
function OnSuccessGoldMCXDetail(data, status) {
    //alert(data);
    try {

        var messages = data.split("\\u000d\\u000a");


        if (typeof oldDataMCX_OnSuccessGoldMCXDetail != 'undefined') {

        }
        else {
            oldDataMCX_OnSuccessGoldMCXDetail = data.toString();
        }
        var messagesOld = oldDataMCX_OnSuccessGoldMCXDetail.split("\\u000d\\u000a");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }

            if (messages.length != messagesOld.length) {
                oldDataMCX_OnSuccessGoldMCXDetail = data.toString();
                return;
            }

            removeAllRowsFromTableGoldMCX();
            var zebraMCX = document.getElementById("gvdata_Table_MCX");
            var trow;

            var trowString = "<tr>" +
	                            "<td style=\"padding: 5px 0px 0px;padding-left:2%;text-align:left\">Features</td>" +
								"<td style=\"padding: 5px 0px 0px;padding-right:3%;text-align:right\"><a onclick=\"javascript:toggleMCX('true')\"><i class=\"fa fa-bars\" style=\"color:#612241;font-size:130%;\" aria-hidden=\"true\"></i></a></td>" +
                            "</tr>";

            //console.log(messages.length);
            for (var i = 3; i < 12; i++) {
                //var ret = jQuery.parseJSON(messages[i]);
                var ret = messages[i].split("\\u0009");
                var oldRet;

                var ret_copy = ret[1];
                ret_copy = ret[1].replace(/ +/g, "");


                oldRet = messagesOld[i].split("\\u0009");
                if (typeof ret[1] != 'undefined') {

                    //alert(ret[1] + '---->' + oldRet[1]);

                    trowString = trowString + "<tr onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "');\">" +
	                                            "<td colspan=\"2\" style=\"padding-bottom: 15px;background: #612241;border-bottom: 15px solid transparent;-webkit-background-clip: padding;-moz-background-clip: padding;background-clip: padding-box;\">" +
		                                            "<table class=\"MCX_Body\">";


                    trowString = trowString + "<tr>" +
					                            "<td style=\"text-align: left;color: #f0a548;font-weight: 600;font-size:" + Change_ScriptNameFont + "\">" + ret[1] + "</td>" +
				                              "</tr>";


                    trowString = trowString + "<tr>" +
					                            "<td class=\"MCX-2-td\">" +
						                            "<table class=\"MCX_Table_Child_MCX_Data\">";

                    
                    trowString = trowString + "<tr>" +
								                    "<td colspan=\"2\" align=\"left\">" + //style="/* padding-top: 10px; *//* padding: 0px !important; */"
									                    "<span class=\"Font_MCX_Date\">" + ret[2] + "</span>" +
								                    "</td>" +
							                    "</tr>";


                    //For BID  
                    if (ret[4] > oldRet[4]) {

                        trowString = trowString + "<tr>" +
								                    "<td id=\"" + ret_copy + i + "FORWARD102BUY\" align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c\">" + ret[4] + "</span> | ";
                        scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = "#00ce7c";
                    }
                    else if (ret[4] < oldRet[4]) {

                        trowString = trowString + "<tr>" +
								                    "<td id=\"" + ret_copy + i + "FORWARD102BUY\" align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404\">" + ret[4] + "</span> | ";
                        scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = "#cc0404";
                    }
                    else {

                        if (scripColor_OnSuccessGoldMCXDetail_One[ret[4]] == undefined) {
                            scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = Color_ForeColor; //  "#ffffff";
                        }
                        //                        else if (scripColor_OnSuccessGoldMCXDetail_One[ret[4]].length != 7) {
                        //                            scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = "#ffffff";
                        //                        }

                        trowString = trowString + "<tr>" +
								                    "<td id=\"" + ret_copy + i + "FORWARD102BUY\" align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_One[ret[4]] + ";\">" + ret[4] + "</span> | ";
                    }


                    //For ASK
                    if (ret[5] > oldRet[5]) {
                        trowString = trowString + "<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c\">" + ret[5] + "</span>" +
								                    "</td>";
                        scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = "#00ce7c";
                    }
                    else if (ret[5] < oldRet[5]) {
                        trowString = trowString + "<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404\">" + ret[5] + "</span>" +
								                    "</td>";
                        scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = "#cc0404";
                    }
                    else {

                        if (scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] == undefined) {
                            scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = Color_ForeColor; // "#ffffff";
                        }
                        //                        else if (scripColor_OnSuccessGoldMCXDetail_Two[ret[5]].length != 7) {
                        //                            scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = "#ffffff";
                        //                        }

                        trowString = trowString + "<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] + ";\">" + ret[5] + "</span>" +
								                    "</td>";
                    }


                    trowString = trowString + "<td style=\"vertical-align: top;padding-left: 10px;\">" +
									                "<span class=\"Font_MCX_Features_Rates\" style=\"font-size: 0.7rem;\">LTP: " + ret[3] + "</span>" +
								                "</td>" +
							                "</tr>";


                    trowString = trowString + "<tr>" +
								                "<td colspan=\"2\" class=\"font_MCX_HLC\" align=\"left\" style=\"padding-bottom: 10px;\">" + //style="/* padding-bottom: 15px; */"
									                "<span class=\"MCX_High_Low_Close_Box High-Green-MCX\">H: " + ret[8] + "</span>" +
									                "<span class=\"MCX_High_Low_Close_Box Low-Red-MCX\">L: " + ret[9] + "</span>" +
									                "<span class=\"MCX_High_Low_Close_Box pClose-MCX\">P.Close: " + ret[7] + "</span>" +
								                "</td>" +
							                "</tr>";


                    trowString = trowString + "</table>" +
					                            "</td>";

                    //console.log(i);

                    
                    // ********** Next td ***********
                    i = i + 1;
                    ret = messages[i].split("\\u0009");
                    oldRet = messagesOld[i].split("\\u0009");
                    
                    if (typeof ret[1] != 'undefined') {
                        trowString = trowString + "<td class=\"pad-dynamic-MCX\" width=\"50%\" style=\"background: #fff;\">" +
						                            "<table class=\"MCX_Table_Child_MCX_Data\">";


                        trowString = trowString + "<tr>" +
								                    "<td colspan=\"2\" align=\"left\">" + //style="/* padding-top: 10px; *//* padding: 0px !important; */"
									                    "<span class=\"Font_MCX_Date\">" + ret[2] + "</span>" +
								                    "</td>" +
							                    "</tr>";


                        //For BID  
                        if (ret[4] > oldRet[4]) {

                            trowString = trowString + "<tr>" +
								                    "<td align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c\">" + ret[4] + "</span> | ";
                            scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = "#00ce7c";
                        }
                        else if (ret[4] < oldRet[4]) {

                            trowString = trowString + "<tr>" +
								                    "<td align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404\">" + ret[4] + "</span> | ";
                            scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = "#cc0404";
                        }
                        else {

                            if (scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] == undefined) {
                                scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = Color_ForeColor; //  "#ffffff";
                            }
                            //                            else if (scripColor_OnSuccessGoldMCXDetail_Three[ret[4]].length != 7) {
                            //                                scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = "#ffffff";
                            //                            }


                            trowString = trowString + "<tr>" +
								                    "<td align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] + ";\">" + ret[4] + "</span> | ";
                        }


                        //For ASK
                        if (ret[5] > oldRet[5]) {
                            trowString = trowString + "<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c\">" + ret[5] + "</span>" +
								                    "</td>";
                            scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = "#00ce7c";
                        }
                        else if (ret[5] < oldRet[5]) {
                            trowString = trowString + "<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404\">" + ret[5] + "</span>" +
								                    "</td>";
                            scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = "#cc0404";
                        }
                        else {

                            if (scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] == undefined) {
                                scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = Color_ForeColor; //  "#ffffff";
                            }
                            //                            else if (scripColor_OnSuccessGoldMCXDetail_Four[ret[5]].length != 7) {
                            //                                scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = "#ffffff";
                            //                            }


                            trowString = trowString + "<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] + ";\">" + ret[5] + "</span>" +
								                    "</td>";
                        }


                        trowString = trowString + "<td style=\"vertical-align: top;padding-left: 10px;\">" +
									                "<span class=\"Font_MCX_Features_Rates\" style=\"font-size: 0.7rem;\">LTP: " + ret[3] + "</span>" +
								                "</td>" +
							                "</tr>";


                        trowString = trowString + "<tr>" +
								                "<td colspan=\"2\" class=\"font_MCX_HLC\" align=\"left\" style=\"padding-bottom: 10px;\">" + //style="/* padding-bottom: 15px; */"
									                "<span class=\"MCX_High_Low_Close_Box High-Green-MCX\">H: " + ret[8] + "</span>" +
									                "<span class=\"MCX_High_Low_Close_Box Low-Red-MCX\">L: " + ret[9] + "</span>" +
									                "<span class=\"MCX_High_Low_Close_Box pClose-MCX\">P.Close: " + ret[7] + "</span>" +
								                "</td>" +
							                "</tr>";


                        trowString = trowString + "</table>" +
					                            "</td>";
                    }

                    trowString = trowString + "</tr>";


                    trowString = trowString + "</table>" +
	                                                "</td>" +
                                                "</tr>";


                    //console.log(i);

                } // END if (typeof ret[1] != 'undefined')
            } // END for (var i = 0; i < messages.length; i++) {










            //console.log(messages.length);
            for (var i = 13; i < 15; i++) {
                //var ret = jQuery.parseJSON(messages[i]);
                var ret = messages[i].split("\\u0009");
                var oldRet;

                var ret_copy = ret[1];
                ret_copy = ret[1].replace(/ +/g, "");


                oldRet = messagesOld[i].split("\\u0009");
                if (typeof ret[1] != 'undefined') {

                    //alert(ret[1] + '---->' + oldRet[1]);

                    trowString = trowString + "<tr onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "');\">" +
	                                            "<td colspan=\"2\" style=\"padding-bottom: 15px;background: #612241;border-bottom: 15px solid transparent;-webkit-background-clip: padding;-moz-background-clip: padding;background-clip: padding-box;\">" +
		                                            "<table class=\"MCX_Body\">";


                    trowString = trowString + "<tr>" +
					                            "<td style=\"text-align: left;color: #f0a548;font-weight: 600;font-size:" + Change_ScriptNameFont + "\">" + ret[1] + "</td>" +
				                              "</tr>";


                    trowString = trowString + "<tr>" +
					                            "<td class=\"MCX-2-td\">" +
						                            "<table class=\"MCX_Table_Child_MCX_Data\">";


                    trowString = trowString + "<tr>" +
								                    "<td colspan=\"2\" align=\"left\">" + //style="/* padding-top: 10px; *//* padding: 0px !important; */"
									                    "<span class=\"Font_MCX_Date\">" + ret[2] + "</span>" +
								                    "</td>" +
							                    "</tr>";


                    //For BID  
                    if (ret[4] > oldRet[4]) {

                        trowString = trowString + "<tr>" +
								                    "<td id=\"" + ret_copy + i + "FORWARD102BUY\" align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c;font-size: 24px;\">" + ret[4] + "</span>";
                        scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = "#00ce7c";
                    }
                    else if (ret[4] < oldRet[4]) {

                        trowString = trowString + "<tr>" +
								                    "<td id=\"" + ret_copy + i + "FORWARD102BUY\" align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404;font-size: 24px;\">" + ret[4] + "</span>";
                        scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = "#cc0404";
                    }
                    else {

                        if (scripColor_OnSuccessGoldMCXDetail_One[ret[4]] == undefined) {
                            scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = Color_ForeColor; //  "#ffffff";
                        }
                        //                        else if (scripColor_OnSuccessGoldMCXDetail_One[ret[4]].length != 7) {
                        //                            scripColor_OnSuccessGoldMCXDetail_One[ret[4]] = "#ffffff";
                        //                        }

                        trowString = trowString + "<tr>" +
								                    "<td id=\"" + ret_copy + i + "FORWARD102BUY\" align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_One[ret[4]] + ";font-size: 24px;\">" + ret[4] + "</span>";
                    }


                    //For ASK
                    if (ret[5] > oldRet[5]) {
                        trowString = trowString + //"<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c\">" + ret[5] + "</span>" +
								                    "</td>";
                        scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = "#00ce7c";
                    }
                    else if (ret[5] < oldRet[5]) {
                        trowString = trowString + //"<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404\">" + ret[5] + "</span>" +
								                    "</td>";
                        scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = "#cc0404";
                    }
                    else {

                        if (scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] == undefined) {
                            scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = Color_ForeColor; // "#ffffff";
                        }
                        //                        else if (scripColor_OnSuccessGoldMCXDetail_Two[ret[5]].length != 7) {
                        //                            scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] = "#ffffff";
                        //                        }

                        trowString = trowString + //"<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_Two[ret[5]] + ";\">" + ret[5] + "</span>" +
								                    "</td>";
                    }



                    "</tr>";





                    trowString = trowString + "</table>" +
					                            "</td>";

                    //console.log(i);


                    // ********** Next td ***********
                    i = i + 1;
                    ret = messages[i].split("\\u0009");
                    oldRet = messagesOld[i].split("\\u0009");

                    if (typeof ret[1] != 'undefined') {
                        trowString = trowString + "<td class=\"pad-dynamic-MCX\" width=\"50%\" style=\"background: #fff;\">" +
						                            "<table class=\"MCX_Table_Child_MCX_Data\">";


                        trowString = trowString + "<tr>" +
								                    "<td colspan=\"2\" align=\"left\">" + //style="/* padding-top: 10px; *//* padding: 0px !important; */"
									                    "<span class=\"Font_MCX_Date\">" + ret[2] + "</span>" +
								                    "</td>" +
							                    "</tr>";


                        //For BID  
                        if (ret[4] > oldRet[4]) {

                            trowString = trowString + "<tr>" +
								                    "<td align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c;font-size: 24px;\">" + ret[4] + "</span>";
                            scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = "#00ce7c";
                        }
                        else if (ret[4] < oldRet[4]) {

                            trowString = trowString + "<tr>" +
								                    "<td align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404;font-size: 24px;\">" + ret[4] + "</span>";
                            scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = "#cc0404";
                        }
                        else {

                            if (scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] == undefined) {
                                scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = Color_ForeColor; //  "#ffffff";
                            }
                            //                            else if (scripColor_OnSuccessGoldMCXDetail_Three[ret[4]].length != 7) {
                            //                                scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] = "#ffffff";
                            //                            }


                            trowString = trowString + "<tr>" +
								                    "<td align=\"left\" style=\"padding-bottom: 10px;\">" +
									                    "<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_Three[ret[4]] + ";font-size: 24px;\">" + ret[4] + "</span>";
                        }


                        //For ASK
                        if (ret[5] > oldRet[5]) {
                            trowString = trowString + //"<span class=\"Font_MCX_Features_Rates\" style=\"color:#00ce7c\">" + ret[5] + "</span>" +
								                    "</td>";
                            scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = "#00ce7c";
                        }
                        else if (ret[5] < oldRet[5]) {
                            trowString = trowString + //"<span class=\"Font_MCX_Features_Rates\" style=\"color:#cc0404\">" + ret[5] + "</span>" +
								                    "</td>";
                            scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = "#cc0404";
                        }
                        else {

                            if (scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] == undefined) {
                                scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] = Color_ForeColor; //  "#ffffff";
                            }


                            trowString = trowString + //"<span class=\"Font_MCX_Features_Rates\" style=\"color:" + scripColor_OnSuccessGoldMCXDetail_Four[ret[5]] + ";\">" + ret[5] + "</span>" +
								                    "</td>";
                        }

                        "</tr>";


                        trowString = trowString + "</table>" +
					                            "</td>";
                    }

                    trowString = trowString + "</tr>";


                    trowString = trowString + "</table>" +
	                                                "</td>" +
                                                "</tr>";


                    //console.log(i);

                } // END if (typeof ret[1] != 'undefined')
            } // END for (var i = 0; i < messages.length; i++) {












            //trowString = trowString + "</table><br/><br/><br/>";
            trow = $(trowString);
            trow.prependTo(zebraMCX);
            //oldDataMCX_OnSuccessGoldMCXDetail = data.toString();
        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }

        Success3_MCX_Portfolio(data, status); //OnSuccess2 Function 2


    }
    catch (e) {
        //alert("OnSuccessGoldCoins " + e);
        oldDataMCX_OnSuccessGoldMCXDetail = data.toString();
    }


}

function OnErrorGoldMCX(request, status, error) {
    // alert("Webservice Error: " + request.statusText);
}
//END MCX Monank









// ############################################### Portfolio ##########################################
// ############################################### Portfolio ##########################################
// ############################################### Portfolio ##########################################

var GlobalList = {};
var AllData_GlobalList = {};


var trendingList = {};
var AllData_trendingList = {};


var MCXList = {};
var AllData_MCXList = {};
//Start MCX Portfolio
function Success3_MCX_Portfolio(data, status) {
    //alert(data);
    try {

        var messages = data.split("\\u000d\\u000a");


        if (typeof oldDataMCX_Success3_MCX_Portfolio != 'undefined') {

        }
        else {
            oldDataMCX_Success3_MCX_Portfolio = data.toString();
        }
        var messagesOld = oldDataMCX_Success3_MCX_Portfolio.split("\\u000d\\u000a");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }

            if (messages.length != messagesOld.length) {
                oldDataMCX_Success3_MCX_Portfolio = data.toString();
                return;
            }


            removeAllRowsFromTableGoldMCX_Portfolio();
            var zebraMCX = document.getElementById("gvdata_Table_MCX_Portfolio");
            var trow;

            SwiperHeading = "MCX";

            var trowString = "<tr>" +
	                            "<td style=\"padding: 5px 0px 10px;\">Forward</td>" +
                            "</tr>";


            //Logic
            if (MainTemp_MCX == "True") {
                for (var i = 3; i < messages.length; i++) {

                    var ret = messages[i].split("\\u0009");
                    var oldRet;

                    oldRet = messagesOld[i].split("\\u0009");

                    FirstTimeLoad(SwiperHeading, i);
                }
            }

            MainTemp_MCX = "False";

            trowString = trowString + "<tr>";

            for (var i = 3; i < messages.length; i++) {
                //var ret = jQuery.parseJSON(messages[i]);
                var ret = messages[i].split("\\u0009");
                var oldRet;

                oldRet = messagesOld[i].split("\\u0009");



                if (typeof ret[1] != 'undefined') {

                    //alert(ret[1] + '---->' + oldRet[1]);


                    //                    if (AllData_MCXList[i] == i) { //*************************************


                    if (AllData_MCXList[i] != i) { //*************************************
                        var bg_col = "#000";
                        trowString = trowString + //"<tr>" +
                                                    "<td class=\"Custom_Box\" style=\"padding: 3px 0px;\">" +
	                                                    "<table class=\"Trending_Table_Child3_Port\" style=\"background-color: #000;\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "')\" width=\"100%\">";
                    }
                    else {
                        var bg_col = "#536cce";
                        trowString = trowString + //"<tr>" +
                                                    "<td class=\"Custom_Box\" style=\"padding: 3px 0px;\">" +
	                                                    "<table class=\"Trending_Table_Child3_Port\" style=\"background-color: #536cce;\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "')\" width=\"100%\">";
                    }

                    trowString = trowString + "<tr>" +
		                                            "<td align=\"center\" style=\"padding-top: 10px;\">" + ret[1] + "</td>" +
	                                            "</tr>" +
	                                            "<tr>" +
		                                            "<td align=\"center\" style=\"padding-top: 10px;color:#FFF;\">" + ret[2] + "</td>" +
	                                            "</tr>";



                    trowString = trowString + "</table>" +
					                            "</td>";
                    //                    } // END if (AllData_MCXList[i] == i) { //*************************************

                } // END if (typeof ret[1] != 'undefined')

            } // END for (var i = 0; i < messages.length; i++) {

            trowString = trowString + "</tr>";

            //trowString = trowString + "</table><br/><br/><br/>";
            trow = $(trowString);
            trow.prependTo(zebraMCX);
            //oldDataMCX_Success3_MCX_Portfolio = data.toString();
        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }

        Success3_MCX_Portfolio_Fetch(data, status); //MCX Fetch


    }
    catch (e) {
        //alert("OnSuccessGoldCoins " + e);
        oldDataMCX_Success3_MCX_Portfolio = data.toString();
    }


}


var scripColor_Success3_MCX_Portfolio_Fetch = [];
//Start MCX Fetch
function Success3_MCX_Portfolio_Fetch(data, status) {
    //alert(data);
    try {

        var messages = data.split("\\u000d\\u000a");


        if (typeof oldDataMCX_Success3_MCX_Portfolio_Fetch != 'undefined') {

        }
        else {
            oldDataMCX_Success3_MCX_Portfolio_Fetch = data.toString();
        }
        var messagesOld = oldDataMCX_Success3_MCX_Portfolio_Fetch.split("\\u000d\\u000a");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }

            gvdata_Table_MCX_Fetch();
            var zebraMCX_gvdata_Table_MCX_Fetch = document.getElementById("gvdata_Table_MCX_Fetch");
            var trow;

            SwiperHeading = "MCX";
            var trowString = "";
            //            trowString = "<tr>" +
            //	                            "<td style=\"padding: 5px 0px 10px;padding-left:6%;text-align:left\">Features</td>" +
            //                            "</tr>";

            for (var i = 3; i < messages.length; i++) {
                //var ret = jQuery.parseJSON(messages[i]);
                var ret = messages[i].split("\\u0009");
                var oldRet;

                oldRet = messagesOld[i].split("\\u0009");

                if (MCXList[i] == i) {
                    if (typeof ret[1] != 'undefined') {

                        //alert(ret[1] + '---->' + oldRet[1]);

                        trowString = trowString + "<tr>" +
				                                    "<td style=\"padding: 3px 0px;\">" +
					                                    "<table class=\"Trending_Table_Child3\" width=\"100%\">";

                        trowString = trowString + "<tr>" +
							                        "<td align=\"left\" style=\"padding-top: 10px;font-size:" + Change_ScriptNameFont + "\">" + ret[1] + " " + ret[2] + "</td>";


                        //For BID  
                        if (ret[3] > oldRet[3]) {
                            trowString = trowString + "<td rowspan=\"2\" align=\"right\" style=\"padding-top: 0px;\">" + //class=\"plus_font\"
									                    "<span class=\"Font_MCX_Features_Rates plus_font\" style=\"color:#00ce7c;font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span>"; //" + ret[4] + " | 

                            scripColor_Success3_MCX_Portfolio_Fetch[ret[3]] = "#00ce7c";
                        }
                        else if (ret[3] < oldRet[3]) {
                            trowString = trowString + "<td rowspan=\"2\" align=\"right\" style=\"padding-top: 0px;\">" + //class=\"plus_font\"
									                    "<span class=\"Font_MCX_Features_Rates plus_font\" style=\"color:#cc0404;font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span>";

                            scripColor_Success3_MCX_Portfolio_Fetch[ret[3]] = "#cc0404";
                        }
                        else {

                            if (scripColor_Success3_MCX_Portfolio_Fetch[ret[3]] == undefined) {
                                scripColor_Success3_MCX_Portfolio_Fetch[ret[3]] = Color_ForeColor; //  "#ffffff";
                            }

                            trowString = trowString + "<td rowspan=\"2\" align=\"right\" style=\"padding-top: 0px;\">" + //class=\"plus_font\"
									                    "<span class=\"Font_MCX_Features_Rates plus_font\" style=\"color:" + scripColor_Success3_MCX_Portfolio_Fetch[ret[3]] + ";font-size:" + Script_Font_LiveRatesCoins + "\">" + ret[3] + "</span>";
                        }


                        //                        //For ASK
                        //                        if (ret[5] > oldRet[5]) {
                        //                            trowString = trowString + "<span class=\"Font_MCX_Features_Rates plus_font\" style=\"color:#00ce7c\">" + ret[5] + "</span>" +
                        //								                    "</td>";
                        //                        }
                        //                        else if (ret[5] < oldRet[5]) {
                        //                            trowString = trowString + "<span class=\"Font_MCX_Features_Rates plus_font\" style=\"color:#cc0404\">" + ret[5] + "</span>" +
                        //								                    "</td>";
                        //                        }
                        //                        else {
                        //                            trowString = trowString + "<span class=\"Font_MCX_Features_Rates plus_font\">" + ret[5] + "</span>" +
                        //								                    "</td>";
                        //                        }

                        trowString = trowString + "<td rowspan=\"2\" class=\"plus_width\"><i class=\"fa fa-minus-circle plus_font\" onclick=\"javascript:myFunctionClick_Minus('" + SwiperHeading + "','" + i + "')\" aria-hidden=\"true\" style=\"margin-left:10px;color:#00ce7c;\"></i></td>";

                        trowString = trowString + "</tr>";

                        //                        trowString = trowString + "<tr>" +
                        //							                    "<td class=\"font_Trending_HLC\" align=\"left\" style=\"padding-bottom: 15px;\">" +
                        //								                    "<span class=\"Trading_High_Low_Close_Box High-Green\">H: " + ret[3] + "</span>" +
                        //								                    "<span class=\"Trading_High_Low_Close_Box Low-Red\">L: " + ret[4] + "</span>" +
                        //                        //								                    "<span class=\"Trading_High_Low_Close_Box\">P.Close: " + ret[5] + "</span>" +
                        //							                    "</td>" +
                        //						                    "</tr>";


                        trowString = trowString + "</table>" +
	                                                "</td>" +
                                                "</tr>";




                    } // END if (typeof ret[1] != 'undefined')
                } //END if (trendingList[ret[1]] == ret[1]) {



            } // END for (var i = 0; i < messages.length; i++) {


            //trowString = trowString + "</table><br/><br/><br/>";
            trow = $(trowString);
            trow.prependTo(zebraMCX_gvdata_Table_MCX_Fetch);
            //oldDataMCX_Success3_MCX_Portfolio_Fetch = data.toString();
        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }


    }
    catch (e) {
        //alert("OnSuccessGoldCoins " + e);
        oldDataMCX_Success3_MCX_Portfolio_Fetch = data.toString();
    }


}
//End MCX Fetch














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
            //url: localStorage.webPanel + "/WebServiceGetMarquee.asmx/getMarquee?username=" + localStorage.appnameWithMiniadminId,
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

    

