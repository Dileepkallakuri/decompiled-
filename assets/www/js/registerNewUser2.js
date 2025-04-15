function CallWebServiceFromJquery_registerNewUser2(name, otp, mobile, email, address) {
    try {

        //alert('CallWebServiceFromJquery_registerNewUser2');
        try {
            startSpinner();
        }
        catch (e) {

        }


        //alert(localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/registerNewUser2/" + name + "/" + otp + "/1/" + mobile + "/" + area + "/1/" + intercom);

        //					var ip = window.localStorage.getItem("ip");
        //					var port = window.localStorage.getItem("port");
        //					if (ip == null && port == null) {
        $.ajax({
            type: "GET",
            //                            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/generateOTP/" + name + "/" + mobile + "/1/1/Android",
            //url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/generateOTP/" + name + "/" + mobile + "/1/1/Android/" + localStorage.appnameWithMiniadminId,
            //localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/registerNewUser2/string username, string password, string emailId, string mobileNo, string address, string contactPerson, string telephoneNo,
            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/registerNewUser2/" + name + "/" + otp + "/" + email + "/" + mobile + "/" + address + "/1/1",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_registerNewUser2,
            error: OnError_registerNewUser2,
            cache: false
        });
        //                    }

    }
    catch (e) {
        // alert("CallWebServiceFromJquery " + e);
    }


}


function OnSuccess_registerNewUser2(data, status) {
    try {
        stopSpinner();
    }
    catch (e) {

    }

    //alert(data);
    try {


        var name = $('#name').val();
        //username
        var mobile = $('#mobile').val();
        //password
        var otp = $('#otp').val();
        var usernameFromOTP = window.localStorage.getItem("username");

        CallWebServiceFromJquery(usernameFromOTP, otp);

    }
    catch (e) {
        // alert(e);
    }


}


function OnError_registerNewUser2(request, status, error) {
    try {
        stopSpinner();
    }
    catch (e) {

    }

    //alert("error : " + error);
}
		