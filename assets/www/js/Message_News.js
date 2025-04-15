


//        function removeAllRowsFromTable() {

//            $("#gvData tbody tr").remove();

//        }
//       

//        function fnStartClock() {

//            try {
//                //oInterval = setInterval("CallWebServiceFromJquery()", 500);
//                CallWebServiceFromJquery();
//            }
//            catch (e) {
//                // alert("fnStartClock" + e);
//            }
//        }

//        function fnStopClock() {
//            try {
//                //clearInterval(oInterval);
//            }
//            catch (e) {
//                //  alert("fnStopClock" + e);
//            }
//        }

//        function CallWebServiceFromJquery() {
//            try {

//                $.ajax({
//                    type: "GET",
//                    url: "http://message.arihantspot.com/GetMessage.asmx/GetMessagesList",
//                    dataType: "text",
//                    crossDomain: true,
//                    processData: false,
//                    success: OnSuccess,
//                    error: OnError,
//                    cache: false
//                });
//            }
//            catch (e) {
//                //alert("CallWebServiceFromJquery " + e);
//            }


//        }
//        var maxRows = 0;
//        var oldData;
//        var screenFontSize = 14;

//      
//        var deletedScrips = new Array();

//        function deleteScrip(rowNum) {
//            //alert(rowNum);
//            try {
//                deletedScrips[rowNum] = "0";
//                maxRows = parseInt(maxRows, 0) - 1;


//                window.localStorage.setItem("maxRows", maxRows);

//                window.localStorage.setItem("deletedScrips", deletedScrips);
//            }
//            catch (e) {
//                // alert("deleteScrip" + e);
//            }

//        }

//        var convert = function (convert) {

//            return $("<span />", { html: convert }).text();

//        };

//        function OnSuccess(data, status) {
//            //alert(data);
//            try {

//                var messages = data.split("|");

//                if (typeof messages != 'undefined') {
//                    if (maxRows == 0) {
//                        maxRows = messages.length;
//                    }

//                    removeAllRowsFromTable();
//                    var zebra = document.getElementById("gvData");
//                    var trow;
//                    var trowString = "<h2 align=\"center\" style=\"color:#FFD700;\">Messages</h2>";
//                    trowString = "";

//                    for (var i = 1; i < (messages.length - 1); i = i + 2) {

//                        var msg = messages[i];
//                        var msgDate = messages[i + 1];

//                        if (typeof msgDate != 'undefined') {

//                            trowString = trowString + "<table style=\"border: 1px solid #282828;\" width=\"100%\"><tr style=\"background: #FFF;text-align:left;font-size: 130%;\"><td style=\"text-indent: 5px;padding-top: 10px;padding-bottom: 10px;\">" + convert(msg) + "</td></tr><tr style=\"color: #000;background: #fed438;text-align:right !Important;font-size: 90%;\"><td style=\"padding-right: 8px;\">" + msgDate + "</td></tr></table><br/><br/>";

//                        }


//                    }
//                    trow = $(trowString);
//                    trow.prependTo(zebra);

//                }

//               //myScroll.refresh();

//            }
//            catch (e) {
//                // alert("OnSuccess" + e);
//            }


//        }



//        function OnError(request, status, error) {
//            //alert("Webservice Error: " + request.statusText);
//        }

//       
//        $(document).ready(function () {

//            fnStartClock();
//        });







function removeAllRowsFromTableMessagesss() {

    $("#gvData_Newss").empty();

}



function fnStartClockMessages() {

    try {
        //oInterval = setInterval("CallWebServiceFromJquery()", 500);
        CallWebServiceFromJqueryMessagesss();
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}

function CallWebServiceFromJqueryMessagesss() {
    try {

        //startSpinner();

        $.ajax({
            type: "GET",
            //url: localStorage.webPanel + "/GetMessage.asmx/GetMessagesList?username=" + localStorage.appnameWithMiniadminId,
            url: localStorage.s3url + "news" + localStorage.s3filename,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccessMessages,
            error: OnErrorMessages,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJquery " + e);
    }


}
var maxRows = 0;

var convertMessages = function (convert) {

    return $("<span />", { html: convert }).text();

};


function OnSuccessMessages(data, status) {
    //alert(data);
    try {
        //stopSpinner();
        var messagesss = data.split("|");

        if (typeof messagesss != 'undefined') {
            if (maxRows == 0) {
                maxRows = messagesss.length;
            }

            removeAllRowsFromTableMessagesss();
            var zebra_News = document.getElementById("gvData_Newss");
            var trow_News;
            var trowString_News = "<h2 align=\"center\" style=\"color:#000;\">Messages</h2>";
            trowString_News = "";

            for (var i = 1; i < (messagesss.length - 1); i = i + 2) {

                var msg = messagesss[i];
                var msgDate = messagesss[i + 1];

                if (typeof msgDate != 'undefined') {

                    trowString_News = trowString_News +
                                        "<table class=\"boxx\" width=\"100%\">" +
                                            "<tr style=\"color: #000;font-size: medium;text-align: left;\">" +
                                                "<td style=\"padding: 6px 10px 6px 10px;font-size: 14px;\">" + convertMessages(msg) + "</td>" +
                                            "</tr>" +
                                            "<tr class=\"timeee\">" +
                                                "<td class=\"paddingg \" style=\"\">" + msgDate + "</td>" + //subtitle fancy
                                            "</tr>" +
                                        "</table>";

                    

                }


            }

            trowString_News = trowString_News + "<br><br><br><br><br><br><br><br><br><br>";

            trow_News = $(trowString_News);
            trow_News.prependTo(zebra_News);

        }

        myScroll.refresh();

    }
    catch (e) {
        // alert("OnSuccess" + e);
    }


}

function OnErrorMessages(request, status, error) {
    stopSpinner();
    //alert("Webservice Error: " + request.statusText);
}

$(document).ready(function () {

    fnStartClockMessages();
});
    