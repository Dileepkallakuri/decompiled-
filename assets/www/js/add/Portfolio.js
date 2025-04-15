
var SwiperHeading_scrip = "";
var name_scrip = "";
var MainTemp_GlobalScript = "True";
var MainTemp_Trending = "True";
var MainTemp_MCX = "True";
var MainTemp_Coins = "True";


function FirstTimeLoad(SwiperHeading, name) {
    return;
    //Global
    if (SwiperHeading == "GlobalScript") {
        AllData_GlobalList[name] = name;
    }
}





function myFunctionClick(SwiperHeading, name, bg_col, scriptname) {
    fnStopClock_0();
    setTimeout(function () {
        
        $("#search").val("");

        //Global Script
        if (SwiperHeading == "GlobalScript") {

            if (bg_col == "#536cce") {
                GlobalList[name] = null;
                AllData_GlobalList[name] = null;
            }
            else {
                GlobalList[name] = name;
                AllData_GlobalList[name] = name;
            }


            alert("Script " + scriptname + " added Successfully");

        }
        fnStartClock_0();
        window.localStorage.setItem("GlobalList", JSON.stringify(GlobalList));

    }, 500);


    

}



function myFunctionClick_Minus(SwiperHeading, name) {

    //Global Script
    if (SwiperHeading == "GlobalScript") {
        GlobalList[name] = null;

        AllData_GlobalList[name] = null;
    }

    window.localStorage.setItem("GlobalList", JSON.stringify(GlobalList));

}








function removeAllRowsFromTable_Portfolio() {
    //alert("11");
    $("#gvData_Portfolio").empty();
}
function gvData_GlobalScript_Fetch() {
    $("#gvData_GlobalScript_Fetch").empty();
}




// ############################################### Portfolio ##########################################
// ############################################### Portfolio ##########################################
// ############################################### Portfolio ##########################################

var GlobalList = {};
var AllData_GlobalList = {};

function Portfolio_GoldSilverINR(data, status) {
    //alert(data);
    try {
        //stopSpinner();

        var messages = data.split("\n");

        
        if (typeof oldData != 'undefined') {

        }
        else {
            //alert("1");
            oldData = data.toString();
        }
        var messagesOld = oldData.split("\n");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }


            removeAllRowsFromTable_Portfolio();


            var zebra_gvData_Portfolio = document.getElementById("gvData_Portfolio");


            var trow4;


            SwiperHeading = "GlobalScript";
            var ret = messages[0].split("\t");
            var oldRet;
            var trowString = "";
            oldRet = messagesOld[0].split("\t");
            
            if (typeof ret[1] != 'undefined') {


                //Logic
                if (MainTemp_GlobalScript == "True") {
                    for (var i = 3; i < messages.length; i++) {

                        var ret = messages[i].split("\t");
                        var oldRet;

                        oldRet = messagesOld[i].split("\t");

                        FirstTimeLoad(SwiperHeading, i);
                    }
                }

                MainTemp_GlobalScript = "False";



                //trowString = trowString + "<tr>";

                for (var i = 3; i < messages.length; i++) {
                    //var ret = jQuery.parseJSON(messages[i]);
                    var ret = messages[i].split("\t");
                    var oldRet;

                    oldRet = messagesOld[i].split("\t");



                    if (typeof ret[1] != 'undefined') {

                        //alert(ret[1] + '---->' + oldRet[1]);


                        //                    if (AllData_MCXList[i] == i) { //*************************************















                        //                        if (AllData_GlobalList[i] != i) { //*************************************
                        //                            var bg_col = "#000";
                        //                            trowString = trowString + //"<tr>" +
                        //                                                    "<td class=\"Custom_Box\" style=\"padding: 3px 0px;\">" +
                        //	                                                    "<table class=\"Trending_Table_Child3_Port\" style=\"background-color: #000;\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "')\" width=\"100%\">";
                        //                        }
                        //                        else {
                        //                            var bg_col = "#536cce";
                        //                            trowString = trowString + //"<tr>" +
                        //                                                    "<td class=\"Custom_Box\" style=\"padding: 3px 0px;\">" +
                        //	                                                    "<table class=\"Trending_Table_Child3_Port\" style=\"background-color: #536cce;\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "')\" width=\"100%\">";
                        //                        }

                        //                        trowString = trowString + "<tr>" +
                        //		                                            "<td align=\"center\" style=\"padding-top: 10px;\">" + ret[2] + "</td>" +
                        //	                                            "</tr>" +
                        //	                                            "<tr>" +
                        //		                                            "<td align=\"center\" style=\"padding-top: 10px;color:#FFF;\">" + ret[3] + "</td>" +
                        //	                                            "</tr>";



                        //                        trowString = trowString + "</table>" +
                        //					                            "</td>";






                        if (AllData_GlobalList[i] != i) { //*************************************
                            var bg_col = "#000";
                            trowString = trowString + "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "','" + ret[2] + "')\"> ";
                        }
                        else {
                            var bg_col = "#536cce";
                            trowString = trowString + "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"display:none;\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "','" + ret[2] + "')\"> ";
                        }

                        //alert(ret[3] + " --- " + oldRet[3]);

                        trowString = trowString +
                             "<tr style=\"text-align: center;\">" +
                                "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;font-size:16px;color: #612241;text-align:left;padding-left:10px;\">" + ret[2] + "</td>" +
                                    "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;text-align:right;padding-right:10px;\"><span style=\"font-size: 30px;color: #612241;\">" + ret[4] + "</span></td>";



                        trowString = trowString + "</tr>";











                        //                    } // END if (AllData_MCXList[i] == i) { //*************************************

                    } // END if (typeof ret[1] != 'undefined')

                } // END for (var i = 0; i < messages.length; i++) {

                //trowString = trowString + "</tr>";







            }


            //trowString = trowString;

            trow4 = $(trowString);

            trow4.prependTo(zebra_gvData_Portfolio);

            //oldData = data.toString();

            
            Success3_GlobalScript_Portfolio_Fetch(data, status);
            
        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }


    }
    catch (e) {
        alert("OnSuccess" + e);
    }


}


function resetLiveRateTable() {
    showOnce = "0";
}

function resetLiveRateTable_Silver() {
    showOnce_silver = "0";
}

function resetLiveRateTable_coins() {
    showOnce_coins = "0";
}

var showOnce = "0";
var showOnce_silver = "0";
var showOnce_coins = "0";



function updateOnlyData(data) {
    try {
        var messages = data.split("\n");
        //var messagesOld = oldData.split("\n");

        if (typeof oldData != 'undefined') {
        }
        else {
            oldData = data.toString(); 
        }
        var messagesOld = oldData.split("\n");

       
        var trowString = "";
        for (var i = 3; i < messages.length; i++) {



            var ret = messages[i].split("\t");
            var oldRet = messagesOld[i].split("\t");

            ret[1] = ret[1].replace(/\s+/g, '');


            //$('#' + ret[1] + 'BUY').html(ret[3]);

            //For BUY
            if (ret[4] > oldRet[4]) {

                trowString = "<span style=\"font-size:30px !Important;color:#00D600;\">" + ret[4] + "</span>";
                $('#' + ret[1] + 'BUY').html(trowString);
                //document.getElementById(ret[1] + 'BUY').innerHTML = trowString;
            }
            else if (ret[4] < oldRet[4]) {

                trowString = "<span style=\"font-size:30px !Important;color:red;\">" + ret[4] + "</span>";
                $('#' + ret[1] + 'BUY').html(trowString);
                //document.getElementById(ret[1] + 'BUY').innerHTML = trowString;
            }
            else {

                trowString = "<span style=\"font-size:30px !Important;color:#612241;\">" + ret[4] + "</span>";
                $('#' + ret[1] + 'BUY').html(trowString);
                //document.getElementById(ret[1] + 'BUY').innerHTML = trowString;
            }
            //////END Buy



            //oldDataTrending = data.toString();

        }



        oldData = data.toString();

    }
    catch (e) {
        alert("OnSuccess Mnk" + e);
    }
}


var scripColor_Success3_GlobalScript_Portfolio_Fetch = [];
//Start Global Script
function Success3_GlobalScript_Portfolio_Fetch(data, status) {
    //alert(data);
    try {

        
        if (showOnce == "0") {
            showOnce = "1";
        }
        else {
            updateOnlyData(data);
            return;
        }




        var messages = data.split("\n");


        if (typeof oldDataMCX_Success3_GlobalScript_Portfolio_Fetch != 'undefined') {

        }
        else {
            oldDataMCX_Success3_GlobalScript_Portfolio_Fetch = data.toString();
        }
        var messagesOld = oldDataMCX_Success3_GlobalScript_Portfolio_Fetch.split("\n");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }

            gvData_GlobalScript_Fetch();
            var zebragvData_GlobalScript_Fetch = document.getElementById("gvData_GlobalScript_Fetch");
            var trow;

            SwiperHeading = "GlobalScript";
            var trowString = "";

            for (var i = 3; i < messages.length; i++) {
                //var ret = jQuery.parseJSON(messages[i]);
                var ret = messages[i].split("\t");
                var oldRet;

                oldRet = messagesOld[i].split("\t");

                if (GlobalList[i] == i) {
                    if (typeof ret[1] != 'undefined') {

                        ret[1] = ret[1].replace(/\s+/g, '');
                        //console.log(ret[1]);

                        trowString = trowString + "<tr style=\"cursor: move;\">" +
				                                    "<td style=\"padding: 3px 0px;\">" +
					                                    "<table class=\"Trending_Table_Child3 res_mob_font_width\" width=\"100%\">";


                        trowString = trowString + "<tr>" +
	                                            "<td onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "')\" align=\"left\" style=\"padding-top: 10px;padding-bottom: 10px;font-size:16px !important;color: #612241;width: 50%;\">" + ret[2] + "</td>";

                        if (ret[4] > oldRet[4]) {
                            trowString = trowString + "<td onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "')\" id=\"" + ret[1] + "BUY\" class=\"plus_font\" align=\"right\" style=\"padding-top: 0px;color:#00ce7c;font-size:30px !important;\">" + ret[4] + "</td>";

                            scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[3]] = "#00ce7c";
                        }
                        else if (ret[4] < oldRet[4]) {
                            trowString = trowString + "<td onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "')\" id=\"" + ret[1] + "BUY\" class=\"plus_font\" align=\"right\" style=\"padding-top: 0px;color:#cc0404;font-size:30px !important;\">" + ret[4] + "</td>";

                            scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[3]] = "#cc0404";
                        }
                        else {

                            
                            if (scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[4]] == undefined) {
                                scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[4]] = Color_ForeColor; //  "#ffffff";
                            }

                            
                            //                            else if (scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[2]].length != 7) {
                            //                                scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[2]] = "#ffffff";
                            //                            }

                            trowString = trowString + "<td onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "')\" id=\"" + ret[1] + "BUY\" class=\"plus_font\" align=\"right\" style=\"padding-top: 0px;color:" + scripColor_Success3_GlobalScript_Portfolio_Fetch[ret[4]] + ";font-size:30px !important;color:#612241;\">" + ret[4] + "</td>";
                        }

                        //trowString = trowString + "<td rowspan=\"2\" class=\"plus_width\"><i class=\"fa fa-minus-circle plus_font\" onclick=\"javascript:myFunctionClick_Minus('" + SwiperHeading + "','" + i + "','" + ret[2] + "')\" aria-hidden=\"true\" style=\"margin-left:10px;color:#612241;\"></i></td>";
                        trowString = trowString + "</tr>";

//                        trowString = trowString + "<tr>" +
//                                                    "<td onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "')\" class=\"css-time\"><span class=\"digital-clock\"></span></td>" +
//                                                    "<td onclick=\"callBuySell('" + ret[1] + "','" + ret[2] + "')\" class=\"highlow\"><span>L: " + ret[6] + "</span> | <span>H: " + ret[5] + "</span></td>" +
//                                                  "</tr>";


                        trowString = trowString + "</table>" +
				                                "</td>" +
				                                "</tr>";







                    } // END if (typeof ret[1] != 'undefined')
                } //END if (trendingList[ret[1]] == ret[1]) {



            } // END for (var i = 0; i < messages.length; i++) {


            //trowString = trowString + "</table><br/><br/><br/>";
            trow = $(trowString);
            trow.prependTo(zebragvData_GlobalScript_Fetch);
            //oldDataMCX_Success3_GlobalScript_Portfolio_Fetch = data.toString();
        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }


    }
    catch (e) {
        alert("OnSuccessGoldCoins " + e);
        oldDataMCX_Success3_GlobalScript_Portfolio_Fetch = data.toString();
    }


}
//End Global Script