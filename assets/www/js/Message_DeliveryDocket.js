


        function removeAllRowsFromTable() {

            $("#gvData tbody tr").remove();

        }
       

        function fnStartClock() {

            try {
                //oInterval = setInterval("CallWebServiceFromJquery()", 500);
                CallWebServiceFromJquery();
            }
            catch (e) {
                // alert("fnStartClock" + e);
            }
        }

        function fnStopClock() {
            try {
                //clearInterval(oInterval);
            }
            catch (e) {
                //  alert("fnStopClock" + e);
            }
        }

        function CallWebServiceFromJquery() {
            try {

                $.ajax({
                    type: "GET",
                    //url: "http://message.safaribullions.com/GetMessage.asmx/GetMessagesList",
                    url: localStorage.webPanel + "/GetMessage.asmx/GetDeliveryDocketList?username=" + localStorage.username + "&password=" + localStorage.password,
                    dataType: "text",
                    crossDomain: true,
                    processData: false,
                    success: OnSuccess,
                    error: OnError,
                    cache: false
                });
            }
            catch (e) {
                //alert("CallWebServiceFromJquery " + e);
            }


        }
        var maxRows = 0;
        var oldData;
        var screenFontSize = 14;

      
        var deletedScrips = new Array();

        function deleteScrip(rowNum) {
            //alert(rowNum);
            try {
                deletedScrips[rowNum] = "0";
                maxRows = parseInt(maxRows, 0) - 1;


                window.localStorage.setItem("maxRows", maxRows);

                window.localStorage.setItem("deletedScrips", deletedScrips);
            }
            catch (e) {
                // alert("deleteScrip" + e);
            }

        }

        var convert = function (convert) {

            return $("<span />", { html: convert }).text();

        };

        function OnSuccess(data, status) {
            //alert(data);
            try {

                var messages = data.split("|");

                if (typeof messages != 'undefined') {
                    if (maxRows == 0) {
                        maxRows = messages.length;
                    }

                    removeAllRowsFromTable();
                    var zebra = document.getElementById("gvData");
                    var trow;
                    var trowString = "<h2 align=\"center\" style=\"color:#FFD700;\">Messages</h2>";
                    trowString = "";

                    for (var i = 1; i < (messages.length - 1); i = i + 2) {

                        var msg = messages[i];
                        var msgDate = messages[i + 1];

                        if (typeof msgDate != 'undefined') {

                            trowString = trowString + "<table style=\"border: 1px solid #282828;\" width=\"100%\"><tr style=\"background: #FFF;text-align:left;font-size: 130%;\"><td style=\"padding-top: 10px;padding-bottom: 10px;\">" + convert(msg) + "</td></tr><tr style=\"color:#FFF;background: rgb(56, 63, 72);text-align:right !Important;font-size: 90%;\"><td style=\"padding-right: 8px;\">" + msgDate + "</td></tr></table><br/><br/>";

                        }


                    }
                    trow = $(trowString);
                    trow.prependTo(zebra);

                }

               //myScroll.refresh();

            }
            catch (e) {
                // alert("OnSuccess" + e);
            }


        }



        function OnError(request, status, error) {
            //alert("Webservice Error: " + request.statusText);
        }

       
        $(document).ready(function () {

            fnStartClock();
        });

      