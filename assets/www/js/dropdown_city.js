var Main_City_Tab1 = "";
var Main_City_Tab2 = "";
var Main_City_Tab3 = "";
var Main_City_Tab4 = "";


function removeAllRowsFromTable_DropdownCity() {
    //alert("11");
    $("#mySelect").empty();
}



function fnStartClock_DropdownCity() {

    try {
        refreshData_DropdownCity();
        //oInterval = setInterval("refreshData_DropdownCity()", 500); //500
    }
    catch (e) {
        // alert("fnStartClock" + e);
    }
}

function refreshData_DropdownCity() {
    CallWebServiceFromJquery_DropdownCity();
}

function fnStopClock_DropdownCity() {
    try {
        clearInterval(oInterval);
    }
    catch (e) {
    }
}





function CallWebServiceFromJquery_DropdownCity() {
    try {
        //alert(localStorage.ipAddressBCast + ":" + localStorage.step3StreamingPort + "/VOTSBroadcastStreaming/Services/xml/GetLiveRateByTemplateID/" + window.localStorage.defaultScripTemplateId);

        $.ajax({
            type: "GET",
            //url: "http://admin.capsgold.in/city/capsgold/list.txt",
            //url: "http://admin.dpgold.in/city/dpgold/list.txt",
            url: localStorage.webPanel + "/city/dpgold/list.txt",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess1_DropdownCity,
            error: OnError1_DropdownCity,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJquery " + e);
    }
}

function addZero(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}


var maxRows = 0;
var oldData_DropdownCity;
var counterRefresh = 0;

var AlertList = [];

function OnSuccess1_DropdownCity(data, status) {
    //alert(data);
    try {

        var messages = data.split("\n");

        if (typeof oldData_DropdownCity != 'undefined') {
        }
        else {
            oldData_DropdownCity = data.toString();
        }

        var messagesOld = oldData_DropdownCity.split("\n");

        if (typeof messages != 'undefined') {
            if (maxRows == 0) {
                maxRows = messages.length;
            }
            //            removeAllRowsFromTable();
            //            var zebra = document.getElementById("gvData");
            //            var trow;
            //            var trowString = "";



            //            for (var i = 0; i <= messages.length; i++) {

            //                if (messages[i]) {
            //                    var ret = messages[i].split("\t");
            //                    if (ret[1] == Main_ID) {

            //                        document.getElementById("sell_rate").innerHTML = ret[4];
            //                    }
            //                }

            //            }





            if ($("#mySelect_Dropdown_city").val() === null) {

                for (var i = 0; i <= messages.length - 1; i++) {

                    //var ret = jQuery.parseJSON(messages[i]);
                    var ret = messages[i].split("\t");
                    var oldRet;

                    //                oldRet = messagesOld[i].split("\t");
                    //alert(ret[0]);
                    //alert(ret[2]);
                    if (typeof ret[0] != 'undefined') {
                        $('#mySelect_Dropdown_city').append($('<option>',
							 {
							     value: i, //ret[0]
							     text: ret[0]
							 }));
                    }
                    if (i == 0) {

                        Main_ID = ret[0];
                        Main_Name = ret[0];
                        $('#mySelect_Dropdown_city').val(ret[0]);

                        //var str = $("#mySelect_Dropdown_city option:selected").val(ret[0]).toLowerCase();
                        var str = ret[0]; //.toLowerCase()
                        str = str.replace(/\s/g, '');


                        Main_City_Tab1 = str;


                    }

                }
            }

            oldData_DropdownCity = data.toString();
            SavedSelectedDropdown();

        }

        if (counterRefresh == 0) {
            //myScroll.refresh();
            counterRefresh = counterRefresh + 1;
        }


        //Success2_gvData_Trending_Fetch(data, status); //OnSuccess2 Function 2

    }
    catch (e) {
        //alert("OnSuccess" + e);
    }


}



function OnError1_DropdownCity(request, status, error) {
    //alert("Webservice Error: " + request.statusText + " " + error);
}




$("#mySelect_Dropdown_city").change(function () {
    try {

        var DropdownId = $("#mySelect_Dropdown_city option:selected").val(); //toLowerCase();

        localStorage.SelectState = DropdownId;
        console.log(localStorage.SelectState);

        var str = $("#mySelect_Dropdown_city option:selected").text();
        str = str.replace(/\s/g, '');

        Main_City_Tab1 = str;

        showOnce = "0";


        //CallWebServiceFromJquery();

    }
    catch (ex) {
        //alert(ex);
    }
});




function SavedSelectedDropdown() {
    if (localStorage.SelectState) {
        $('#mySelect_Dropdown_city option:eq(' + localStorage.SelectState + ')').attr('selected', 'selected');

        var str = $("#mySelect_Dropdown_city option:selected").text();
        str = str.replace(/\s/g, '');

        Main_City_Tab1 = str;
        console.log(Main_City_Tab1);
        showOnce = "0";

    }



    //    //alert("123");
    //    var Main_ID = "2";
    //    var Main_Name = "Maharastra";

    //    $('#mySelect_Dropdown_city option:eq(' + Main_ID + ')').attr('selected', 'selected');
    //    //$(this).children("option:selected").val() = Maharastra;

    ////    Main_ID = $(this).children(":selected").attr("value");
    ////    Main_Name = $("#mySelect_Dropdown_city option:selected").text();

    //    localStorage.SelectState = Main_ID;
    //    console.log(localStorage.SelectState);
    //    //scriptcodeFill();
    //    //window.location.href = "Chart.html";
}




$(document).ready(function () {
    //fnStartClock_DropdownCity();
});
    

