function CallWebServiceFromJquery_UpdateVersion() {
    try {
        //alert('hi');
        //startSpinner();

        //alert(localStorage.miniadminAPI + "/api/updateapp/raksha/" + localStorage.UpdateApp + "");

        $.ajax({
            type: "GET",
            url: localStorage.miniadminAPI + "/api/updateapp/raksha/" + localStorage.UpdateApp + "",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_UpdateVersion,
            error: OnError_UpdateVersion,
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

var LiveRateMessage = "";

function OnSuccess_UpdateVersion(data, status) {
    //alert(data);
    try {

        var JSONString = data;

        //alert1(JSON.parse(JSONString));
        var JSONObject = JSON.parse(JSONString);
        //console.log(JSONObject);      // Dump all data of the Object in the console

        //alert(JSONObject.errorcode);


        if (JSONObject.isupdate == 1) {

            if (/(android)/i.test(navigator.userAgent)) {
                //window.open(JSONObject.androidlink);
                document.getElementById("Popup_AndroidIphone").href = JSONObject.androidlink;
            }
            else {
                //window.open(JSONObject.iphonelink);
                document.getElementById("Popup_AndroidIphone").href = JSONObject.iphonelink;
            };
            //return false;



            if (JSONObject.iscompulsory == 1) { //Set 1 only
                $("#Popup_NoThanks").hide();
            }

            
            $("#Popup_message").append(JSONObject.message);                

            document.getElementById("clickmodal").click(); // Click on the checkbox

        }




    }
    catch (e) {
        //alert("OnSuccess" + e);
    }


}




function OnError_UpdateVersion(request, status, error) {
    //stopSpinner();
    //alert("Webservice Error: " + request.statusText);
}

$(document).ready(function () {

    CallWebServiceFromJquery_UpdateVersion();

});
	
		