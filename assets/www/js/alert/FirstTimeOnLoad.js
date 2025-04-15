
//function removeAllRowsFromAutoCallsTable() {
//    $("#div2").empty();
//}

function CallWebServiceFromJquery_Alert2() {
    try {

		startSpinner();
		
        $.ajax({
            type: "GET",
            //url: "http://autoratealert.arihantspot.com:9200/api/OldAlert/" + device.uuid + "/" + localStorage.appnameWithMiniadminId,
            url: localStorage.ratealertIpAddress + ":" + localStorage.ratealertPort + "/api/OldAlert/" + device.uuid + "/" + localStorage.appnameWithMiniadminId,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_Alert2,
            error: OnError_Alert2,
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



function OnSuccess_Alert2(data, status) {
    //alert(data);
    try {

		stopSpinner();
        //        removeAllRowsFromAutoCallsTable();

        var trowString = "";
        var JSONString = data;
        //        alert(JSONString);

        var JSONObject1 = JSON.parse(JSONString);
        //alert(JSONObject1);

        for (var i = 0; i < JSONObject1.length; i++) {

            //            alert(JSONObject1[i]["ScripCode"]);
            //            alert(JSONObject1[i]["ScripName"]);
            //            alert(JSONObject1[i]["AlertPrice"]);
            //            alert(JSONObject1[i]["LivePriceAtStart"]);
            //            alert(JSONObject1[i]["DateTimeAtStart"]);

            if (JSONObject1[i]["Status"] == "Pending") //JSONObject1[i]["ScripCode"] == "Gold" && 
            {

                var table = document.getElementById("data_table");
                var table_len = (table.rows.length) - 1;
                //            alert("table_len" + table_len + ",table.rows.length" + table.rows.length);
                //Replace 0 with table_len
                var row = table.insertRow(0).outerHTML = "<tr id='row" + table_len + "'>" +
				                                                "<td >" +
					                                                "<table class=\"Trending_Table_Child3\" style=\"background: #efefef;padding: 3px 0px;padding-bottom: 15px;border: 2px double gold;\" width=\"100%\">" +
                                                                        "<tr>" +
							                                                "<td  align=\"left\" style=\"padding-top: 10px;font-weight: 600;\">" + JSONObject1[i]["ScripCode"] + "</td>" +
							                                                "<td  class=\"plus_font_Alert\" align=\"right\" style=\"padding-top: 0px;\">" + JSONObject1[i]["AlertPrice"] + "</td>" +
						                                                "</tr>" +

                                                                        "<tr>" +
							                                                "<td align=\"left\" style=\"padding-top: 10px;font-weight: 600;\">" + JSONObject1[i]["DateTimeAtStart"] + "</td>" +
                                                                            "<td align=\"right\" class=\"plus_width\">" +
                                                                                "<a value='Delete' class='delete' onclick='delete_row(" + table_len + "," + JSONObject1[i]["ID"] + ")'><i class=\"fa fa-trash plus_font_Alert\" aria-hidden=\"true\" style=\"margin-left:10px;color:#000;\"></i></a>" +
                                                                            "</td>" +
						                                                "</tr>" +

                                                                      "</table>" +
                                                                   "</td>" +
                                                                "</tr>";





            }




        } // For END


    }
    catch (e) {
        // alert("OnSuccess" + e);
    }


}



function OnError_Alert2(request, status, error) {
	stopSpinner();
   // alert("Webservice Error: " + request.statusText);
}




