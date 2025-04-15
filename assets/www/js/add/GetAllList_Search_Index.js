function Search() {
    fnStopClock_0();
    //startSpinner();

    setTimeout(Search1, 1000);

}


function Search1() {


    //alert(data);
    try {
        //stopSpinner();

        var data = Main_Data;

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
                    for (var i = 0; i < messages.length; i++) {

                        var ret = messages[i].split("\t");
                        var oldRet;

                        oldRet = messagesOld[i].split("\t");

                        FirstTimeLoad(SwiperHeading, i);
                    }
                }

                MainTemp_GlobalScript = "False";



                //trowString = trowString + "<tr>";

                var items = data.split('\n');
                var trowString = "";



                for (var i = 0; i < messages.length; i++) {

                    

                    var Name_Number = items[i].split("\t");
                    if (Name_Number[2].toLowerCase().search($("#search").val().toLowerCase()) >= 0) {


                        //var ret = jQuery.parseJSON(messages[i]);
                        var ret = messages[i].split("\t");
                        var oldRet;

                        oldRet = messagesOld[i].split("\t");



                        if (typeof ret[1] != 'undefined') {



                            if (AllData_GlobalList[i] != i) { //*************************************
                                var bg_col = "#000";
                                trowString = trowString + "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "','" + ret[2] + "')\"> ";
                            }
                            else {
                                var bg_col = "#536cce";
                                trowString = trowString + "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"display:none;\" onclick=\"javascript:myFunctionClick('" + SwiperHeading + "','" + i + "','" + bg_col + "','" + ret[2] + "')\"> ";
                            }

                            trowString = trowString +
                             "<tr style=\"text-align: center;\">" +
                                "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;font-size:16px;color: #612241;text-align:left;padding-left:10px;\">" + ret[2] + "</td>" +
                                    "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;text-align:right;padding-right:10px;\"><span style=\"font-size: 30px;color: #612241;\">" + ret[3] + "</span></td>";



                            trowString = trowString + "</tr>";











                            //                    } // END if (AllData_MCXList[i] == i) { //*************************************

                        } // END if (typeof ret[1] != 'undefined')
                    } //END if (Name_Number[2].toLowerCase().search($("#search").val().toLowerCase()) >= 0) {

                } // END for (var i = 0; i < messages.length; i++) {

                //trowString = trowString + "</tr>";







            }


            trowString = trowString;

            trow4 = $(trowString);
            stopSpinner();
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




function Cancel_Search() {
    try {
        i = 0;
        $("#search").val("");
        OnSuccess1(Main_Data, status);
    }
    catch (e) {
        //alert("OnSuccess" + e);
    }


}








