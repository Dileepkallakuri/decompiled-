function CallWebServiceFromJqueryGenerateOTP(name, mobile) {
    try {

        //alert('1');
        try {
            startSpinner();
        }
        catch (e) {

        }


        //					var ip = window.localStorage.getItem("ip");
        //					var port = window.localStorage.getItem("port");
        //					if (ip == null && port == null) {

        //alert(localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/generateOTP/" + name + "/" + mobile + "/1/1/Android/" + localStorage.appnameWithMiniadminId);

        $.ajax({
            type: "GET",
            //url : "http://mobiletradingorder.safaribullions.com:8888/VOTSMobile/Services/xml/generateOTP/" + name + "/" + mobile + "/1/1/Android",
            //                            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/generateOTP/" + name + "/" + mobile + "/1/1/Android",
            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/generateOTP/" + name + "/" + mobile + "/1/1/Android/" + localStorage.appnameWithMiniadminId,
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccessGenerateOTP,
            error: OnErrorGenerateOTP,
            cache: false
        });
        //                    }

    }
    catch (e) {
        // alert("CallWebServiceFromJquery " + e);
    }


}


function OnSuccessGenerateOTP(data, status) {
    try {
        stopSpinner();
    }
    catch (e) {

    }

     //alert(data);
    try {
     
        var inputVal = data;

        if ($.isNumeric(inputVal) == true) {

            if (data >= 1) {
                window.localStorage.setItem("username", data);
                $('#tblGenerateOTP').css("visibility", 'visible');
                $('#tblLoginViaOTP').css("visibility", 'visible');
                alert1('OTP Sent, Please Login');
                return;
            }
            else {
                $('#tblGenerateOTP').css("visibility", 'visible');
                $('#tblLoginViaOTP').css("visibility", 'visible');
                alert1('Error, OTP Could not be sent');
                return;
            }

        }
        else {
            data = inputVal.replace(/"/g, '');
            window.localStorage.setItem("username", data);
            $('#tblGenerateOTP').css("visibility", 'visible');
            $('#tblLoginViaOTP').css("visibility", 'visible');
            alert1('OTP Sent, Please Login');
            return;

        }

        

    }
    catch (e) {
        // alert(e);
    }


}


function OnErrorGenerateOTP(request, status, error) {
    try {
        stopSpinner();
    }
    catch (e) {

    }

    //alert("error : " + error);
}
		