var Main_ID = 0;
var Main_Name;

$("#mySelect").change(function () {
    Main_ID = $(this).children(":selected").attr("value");
    Main_Name = $("#mySelect option:selected").text();
    // alert(Main_ID);
    //            alert(Main_Name);
    //            AlertList[id] = id;

});


var data;

$(document).ready(function () {
    //alert("1");
    //CallWebServiceFromJquery_QuantityLoad();
    /// data = "1,1 KG|2,2 KG|3,3 KG|4,4 KG|5,5 KG|6,6 KG|7,7 KG|8,8 KG|9,9 KG|10,10 KG";
    //OnSuccess__QuantityLoad(data)
});


function CallWebServiceFromJquery_QuantityLoad(scripCode) {
    try {
        //alert('CallWebServiceFromJquery');
        $.ajax({
            type: "GET",
            //url: "http://mobiletradingorder.safaribullions.com:8888/VOTSMobile/Services/xml/getQuantityList/u/p/" + scripCode,
            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/getQuantityList/u/p/" + scripCode,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess__QuantityLoad,
            error: OnError_QuantityLoad,
            cache: false
        });
    }
    catch (e) {
        //alert("CallWebServiceFromJquery_QuantityLoad " + e);
    }
}




function OnSuccess__QuantityLoad(data) {
    //alert(data);

    try {


        var message = data.replace(/['"]+/g, '');

        var Mnk = message.split('|');


        //$('#mySelectDiv').append();

        var trowString = '<select id="mySelect" name="mySelect">';

        for (var i = 0; i < Mnk.length; i++) {

            try {

                //Mnk[i] = Mnk[i].replace(/^\s*/, "").replace(/\s*$/, "");
                var valuesMnk = Mnk[i].split(',');


                trowString = trowString + '<option value="' + valuesMnk[0] + '">' + valuesMnk[1] + '</option>';


            }
            catch (e) {
                //alert(e) ;
            }

        }

        trowString = trowString + '</select>';

        $('#mySelectDiv').append(trowString);

        $('#mySelect').val(sessionStorage.qty);

        $('select').niceSelect();



        //alert($("#mySelect").val());


    }
    catch (e) {
        // alert("OnSuccess__QuantityLoad " + e);
    }





}

function OnError_QuantityLoad(request, status, error) {
    //alert("Webservice Error: " + request.statusText + " " + error);
}