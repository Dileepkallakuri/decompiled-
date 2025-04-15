$(document).ready(function () {
    CallWebServiceFromJqueryMarquee2();
    //var timerMarquee = setInterval("CallWebServiceFromJqueryMarquee2()", 60000);
});




function CallWebServiceFromJqueryMarquee2() {
    try {
        //alert("CallWebServiceFromJqueryMarquee");
        //alert(localStorage.webPanel + "/WebServiceGetMarquee.asmx/getMarquee2?username=" + localStorage.appnameWithMiniadminId);

        $.ajax({
            type: "GET",            
            url: localStorage.s3url + "tickerlist2" + localStorage.s3filename,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccessMarquee2,
            error: OnErrorMarquee2,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJqueryMarquee " + e);
    }


}

var LiveRateMessage_ticker2 = "";

function OnSuccessMarquee2(data, status) {
    //alert(data);
    try {
        //stopSpinner();
       var messages = data;
			messages = messages.replace('|','');
			messages = messages.replace('|','');
			messages = messages.replace('|','');
			messages = messages.replace('|','');
			// change end

				var msg = messages;

        if (typeof messages != 'undefined') {


            //var zebra = document.getElementById("gvDataLiveRateMessage");

            //var trow;

            var msg = messages;
            //if (msg.length > 5) {

                //alert(msg);
                var trowString = convertLiveRateMessage(msg);
                LiveRateMessage_ticker2 = trowString;
                float_Message();
                //$("#gvDataLiveRateMessage").html(trowString);


                //trowString.prependTo(zebra);
                //trow = $(trowString);
                //alert(trow);
                //trow.prependTo(zebra);
            //}
//            else {
//                LiveRateMessage = "";

//            }


        }
        else {
            LiveRateMessage = "";

        }

    }
    catch (e) {
        //alert("OnSuccess" + e);
    }


}



function OnErrorMarquee2(request, status, error) {
    //alert("Webservice Error: " + request.statusText);
}

function removeAllRowsFromMarquee2() {

    $("#marqueeData2").empty();

}

var convert = function (convert) {

    return $("<span />", { html: convert }).text();

};

