function CallWebServiceFromJqueryLiveRateMessage_DeliveryTracking() {
    try {
        //alert('hi');
        //startSpinner();

        $.ajax({
            type: "GET",
            //url: "http://message.arihantspot.com/WebServiceLiveRatePageMessage.asmx/getLiveRatePageMessage",
            url: localStorage.webPanel + "/WebServiceLiveRatePageMessage.asmx/getDeliveryChargesMessage?username=" + localStorage.appnameWithMiniadminId,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccessLiveRateMessage_DeliveryTracking,
            error: OnErrorLiveRateMessage_DeliveryTracking,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJquery " + e);
    }


}

var convertLiveRateMessage = function (convert) {

    return $("<span />", { html: convert }).text();

};

function OnSuccessLiveRateMessage_DeliveryTracking(data, status) {
    //alert(data);
    try {
        //stopSpinner();
        var messages = data.split("|");

        if (typeof messages != 'undefined') {


            //var zebra = document.getElementById("gvDataLiveRateMessage");

            //var trow;

            var msg = messages[1];
            if (msg.length > 5) {

                //alert(msg);
                var trowString = convertLiveRateMessage(msg);
                
//                float_Message();
                $("#gvDataLiveRateMessage_DeliveryTracking").html(trowString);


                //trowString.prependTo(zebra);
                //trow = $(trowString);
                //alert(trow);
                //trow.prependTo(zebra);
            }
            else {
                

            }


        }
        else {
            

        }

    }
    catch (e) {
        alert1("OnSuccessLiveRateMessage_DeliveryTracking " + e);
    }


}




function OnErrorLiveRateMessage_DeliveryTracking(request, status, error) {
    //stopSpinner();
    //alert("Webservice Error: " + request.statusText);
}

$(document).ready(function () {

    CallWebServiceFromJqueryLiveRateMessage_DeliveryTracking();

});
	
		