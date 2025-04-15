function removeAllRowsFromTable() {
    //alert("11");
    $("#gvData").empty();
}


var ChooseDate = "";
var ChooseMonth = "";
var ChooseYear = "";

var FormatedDate = "";

$("#submit_histo").click(function () {

    try {

        var MainDatee = $("#StartDate").val();


        ChooseYear = MainDatee.substring(0, 4);
        //alert(ChooseYear);

        ChooseMonth = MainDatee.substring(5, 7);
        //alert(ChooseMonth);

        ChooseDate = MainDatee.substring(8, 10);
        //alert(ChooseDate);


        FormatedDate = ChooseDate + "-" + ChooseMonth + "-" + ChooseYear;
        //alert(FormatedDate);
        
        
        CallWebServiceFromJquery_DL();

    }
    catch (err) {

        //  alert1(err);

    }



});




function CallWebServiceFromJquery_DL() {
    try {

        startSpinner();

        //alert(localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/getDeliveryLiftedList/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("password") + "");

        $.ajax({
            type: "GET",
            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/getDeliveryLiftedList/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("password") + "",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_DL,
            error: OnError_DL,
            cache: false
        });
        //               }


    }
    catch (e) {
        //   alert1("CallWebServiceFromJquery " + e);
    }


}
var oldData;
function OnSuccess_DL(data, status) {
    //alert1(data);

    try {

        stopSpinner();

        var messages1 = data.replace(/"/g, ' ');
        var messages = messages1.split("\\u000d\\u000a");
        var scriptRegister = "";

        removeAllRowsFromTable();
        var zebra = document.getElementById("gvData");
        var trow;
        for (var i = 0; i < messages.length; i++) {
            //var ret = jQuery.parseJSON(messages[i]);
            //alert(messages[i]);
            var ret = messages[i].split(",");
            // alert1(ret);
            if (typeof ret[1] != 'undefined') {
                var trowString;
                sessionStorage.exchange = ret[0];


//                alert(ret[14]);
//                alert(ret[14].substr(0, ret[14].indexOf(' ')))

                var GridDate=ret[14].substr(0, ret[14].indexOf(' '));

                if (FormatedDate == GridDate) {

                    if (ret[7] == 'B') {
                        trowString = "<tr valign=\"middle\" style='color:white;font-size:12pt'><td style='width:30%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;color:black;padding-top:1em;font-size:10pt'>" + ret[3] + "</td>";

                        trowString = trowString + "<td style='width:5%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + ret[7] + "</td>";
                        trowString = trowString + "<td style='width:15%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + ret[8] + "</td>";
                        trowString = trowString + "<td style='width:20%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + parseFloat(ret[9]).toFixed(2) + "</td>";
                        trowString = trowString + "<td style='width:30%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + parseFloat(ret[8] * ret[9]).toFixed(2) + "</td></tr>";
                        trowString = trowString + "<tr><td colspan=\"5\" style='width:100%;border-bottom:1pt solid #cfcfcf;padding-bottom:1em;padding-top:0em;color:black;font-size:10pt'>" + ret[14] + "</td></tr>";
                    }
                    else {
                        trowString = "<tr valign=\"middle\" style='color:white;font-size:12pt'><td style='width:30%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + ret[3] + "</td>";
                        trowString = trowString + "<td  style='width:5%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;background-color:red;color:black;font-size:10pt'>" + ret[7] + "</td>";
                        trowString = trowString + "<td style='width:15%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + ret[8] + "</td>";
                        trowString = trowString + "<td style='width:20%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + parseFloat(ret[9]).toFixed(2) + "</td>";
                        trowString = trowString + "<td style='width:30%;border-bottom:0pt solid #cfcfcf;padding-bottom:1em;padding-top:1em;color:black;font-size:10pt'>" + parseFloat(ret[8] * ret[9]).toFixed(2) + "</td></tr>";
                        trowString = trowString + "<tr><td colspan=\"5\" style='width:100%;border-bottom:1pt solid #cfcfcf;padding-bottom:1em;padding-top:0em;color:black;font-size:10pt'>" + ret[14] + "</td></tr>";
                    }



                    //  scriptRegister = scriptRegister + "registerEventOnDiv('" + "row" + i + "');";
                    trow = $(trowString);

                    trow.prependTo(zebra);

                    // alert1(ret[3]);

                } //if (FormatedDate == GridDate) {


            }
        }
        //document.getElementById("scroller").style.height = (i * 50) + "px";
        //myScroll = new iScroll('wrapper', { hScrollbar: false, vScrollbar: true, hideScrollbar: false });
        //jQuery.globalEval(scriptRegister);


    }
    catch (e) {
        //alert1(e);
    }


}



function OnError_DL(request, status, error) {
    stopSpinner();
    //alert1("error : " + error);
}
        