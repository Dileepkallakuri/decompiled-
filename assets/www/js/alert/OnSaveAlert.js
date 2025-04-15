
//function removeAllRowsFromAutoCallsTable() {
//    $("#div2").empty();
//}

function CallWebServiceFromJquery_Alert1() {
    try {

			startSpinner();

//        alert(Main_Name);
//        alert(txtNewAlert);
//        alert(Sell_Ratee);
//        alert(Script_datetime);




        $.ajax({
            type: "GET",
            //            url: "http://autoratealert.arihantspot.com:9200/api/AddAlert/" + Main_Name + "/" + Main_Name + "/" + txtNewAlert + "/" + Sell_Ratee + "/" + localStorage.getItem('registrationId') + "/" + device.uuid + "/" + localStorage.appnameWithMiniadminId + "/" + Script_datetime + "/" + localStorage.MobileType,
            url: localStorage.ratealertIpAddress + ":" + localStorage.ratealertPort + "/api/AddAlert/" + Main_ID + "/" + Main_Name + "/" + txtNewAlert + "/" + Sell_Ratee + "/" + localStorage.getItem('registrationId') + "/" + device.uuid + "/" + localStorage.appnameWithMiniadminId + "/" + Script_datetime + "/" + localStorage.MobileType,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_Alert1,
            error: OnError_Alert1,
            cache: false
        });




    }
    catch (e) {
       // alert("CallWebServiceFromJquery " + e);
    }


}
var maxRows = 0;
var oldData;
var screenFontSize = 14;



function OnSuccess_Alert1(data, status) {
    //alert(data);
    try {

	stopSpinner();
        //        removeAllRowsFromAutoCallsTable();

        var trowString = "";
        var JSONString = data;
        //        alert(JSONString);

        var JSONObject1 = JSON.parse(JSONString);
        //alert(JSONObject1);

//        for (var i = 0; i < JSONObject1.length; i++) {

//            alert(JSONObject1[i]["ScripCode"]);
//            alert(JSONObject1[i]["ScripName"]);
//            alert(JSONObject1[i]["AlertPrice"]);
//            alert(JSONObject1[i]["LivePriceAtStart"]);
//            alert(JSONObject1[i]["DateTimeAtStart"]);
//           
//        } // For END


    }
    catch (e) {
        // alert("OnSuccess" + e);
    }


}



function OnError_Alert1(request, status, error) {
	stopSpinner();
   // alert("Webservice Error: " + request.statusText);
}




