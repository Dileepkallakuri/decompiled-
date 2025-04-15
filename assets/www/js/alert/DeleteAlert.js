
//function removeAllRowsFromAutoCallsTable() {
//    $("#div2").empty();
//}

function CallWebServiceFromJquery_Alert4() {
    try {

       startSpinner();
	   
        $.ajax({
            type: "GET",
            //url: "http://autoratealert.arihantspot.com:9200/api/DeleteAlert/" + DelScript_ID + "",
            url: localStorage.ratealertIpAddress + ":" + localStorage.ratealertPort + "/api/DeleteAlert/" + DelScript_ID + "",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_Alert4,
            error: OnError_Alert4,
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



function OnSuccess_Alert4(data, status) {
    //alert(data);
    try {

		stopSpinner();
        //        removeAllRowsFromAutoCallsTable();

        var trowString = "";
        var JSONString = data;
        //        alert(JSONString);

        var JSONObject1 = JSON.parse(JSONString);
        //alert(JSONObject1);

    }
    catch (e) {
        // alert("OnSuccess" + e);
    }


}



function OnError_Alert4(request, status, error) {
	stopSpinner();
    //alert("Webservice Error: " + request.statusText);
}




