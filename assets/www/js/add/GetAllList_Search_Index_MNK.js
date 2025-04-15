function Search() {
    fnStopClock_0();
    startSpinner();

    setTimeout(Search1, 1000);

}


function Search1() {
    //alert(data);
    try {

        //alert("1");
        var data = Main_Data;

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







        var items = data.split('\n');
        var trowString = "";

        //alert(items.length);
        for (var i = 0; i < items.length; i++) {


            var Name_Number = items[i].split("\t");
            if (Name_Number[2].toLowerCase().search($("#search").val().toLowerCase()) >= 0) {
    
                var retDesktop = messagesDesktopp[i].split("\t");
                var oldRetDesktop;
                oldRetDesktop = messagesOldDesktop[i].split("\t");

                if (typeof retDesktop[2] != 'undefined') {

                    if (retDesktop[3] > oldRetDesktop[3]) {

                        trowString = trowString +

                                            "<table class=\"res_mob_font_width\"  width=\"100%\" style=\"border-bottom: 1px solid #d0ad6a;\" onclick=\"callBuySell('" + retDesktop[1] + "','" + retDesktop[2] + "');\"> " +
                                                "<tr class=\"res_mob_font_width\" style=\"text-align: center;\"> " +
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
                                                "<tr class=\"res_mob_font_width\" style=\"text-align: center;\">" +
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
                                                    "<tr class=\"res_mob_font_width\" style=\"text-align: center;\">" +
                        //"<td class=\"buy_sell_label\" style=\"width:40%;text-align: left !Important;font-size: 16px;\">" + retDesktop[2] + "</td>" +
                                                        "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;font-size:16px\">" + retDesktop[2] + "</td>" +
                        //"<td style=\"width:15%;text-align: center !Important;font-size: 18px;color:#fff;\">" + retDesktop[3] + "</td>"
                                                        "<td style=\"width:50%;border-bottom:1pt solid black;padding-bottom:0.5em;padding-top:0.5em;\"><span style=\"color:white;font-size: 30px;\">" + retDesktop[3] + "</span></td>";

                    }


                } //if (typeof retDesktop[2] != 'undefined') {

                oldData = data.toString();

            } // END if (Name_Number[0].toLowerCase().search($("#search").val().toLowerCase()) >= 0 || OnlyNumberSearch.search($("#search").val()) >= 0) {


        }

        
        stopSpinner();
        trowString = trowString + "</table>"; //</td></tr>
        $("#gvData_Portfolio").html(trowString);


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








