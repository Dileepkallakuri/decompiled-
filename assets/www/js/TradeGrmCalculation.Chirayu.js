var goldlots = "";

function Tab1_Grm_To_Amt() {

    $('#gold-amt').val("");

    goldlots = $('#gold-lots').val(); // Quantity

    CallWebServiceFromJquery_Grm();


    //    var SellRate = $('#3').html(); // Sell Price

    //    var SellRate_BaseValue = (goldlots * SellRate).toFixed(2);
    //    window.localStorage.setItem("Main.SellRate", SellRate_BaseValue);

    //    //var answer = (SellRate * 1.03) * goldlots;

    //    $('#gold-amt').val(parseFloat(SellRate_BaseValue).toFixed(2));

}





function CallWebServiceFromJquery_Grm() {
    try {

        $.ajax({
            type: "GET",
            //url: "http://mobiletradingorder.safaribullions.com:8888/VOTSMobile/Services/xml/getDeliveryPendingList/" + window.localStorage.getItem("username")+ "/" +window.localStorage.getItem("password")+ "",
            url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/getDeliveryPendingList/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("password") + "",
            dataType: "text",
            crossDomain: true,
            processData: false,
            success: OnSuccess_Grm,
            error: OnError_Grm,
            cache: false
        });
        //               }


    }
    catch (e) {
        //   alert1("CallWebServiceFromJquery " + e);
    }


}
var oldData;
function OnSuccess_Grm(data, status) {
    //alert1(data);

    try {

        stopSpinner();

        var messages1 = data.replace(/"/g, ' ');
        var messages = messages1.split("\\u000d\\u000a");
        var scriptRegister = "";
        var zebra = document.getElementById("gvData");
        var trow;
        var GridQty = 0;
        var PreviousGridQty = 0;
        var FinalAmounttoPay = 0;

        exit_for1:
        for (var i = 0; i < messages.length; i++) {

            var ret = messages[i].split(",");
            // alert1(ret);
            //alert(!ret[3].toLowerCase().includes("silver"));
            if (!ret[3].toLowerCase().includes("silver")) {
               
                GridQty = parseFloat(GridQty) + parseFloat(ret[8]); //100
                //console.log("1->" + GridQty);

                if (GridQty <= goldlots) {

                    if (GridQty == goldlots) {
                        var ans = (ret[8] * parseFloat(ret[9]).toFixed(2)) / 10;
                        FinalAmounttoPay = parseFloat(FinalAmounttoPay) + parseFloat(ans);
                        //console.log("2->" + FinalAmounttoPay);
                        break exit_for1;
                    }
                    else {

                        var ans = (ret[8] * parseFloat(ret[9]).toFixed(2)) / 10;
                        FinalAmounttoPay = parseFloat(FinalAmounttoPay) + parseFloat(ans);
                        //console.log("3->" + FinalAmounttoPay);

                    }

                } //if (GridQty <= goldlots) {
                else {
                    var ans = (ret[8] * parseFloat(ret[9]).toFixed(2)) / 10;
                    //console.log(ans);

                    var remQty = Math.round(goldlots - PreviousGridQty); // Answer = 400-300 = 100
                    //console.log(remQty);

                    //console.log("Grid Quantity->" + ret[8]);
                    var RemQtyRate = (parseFloat(remQty) * parseFloat(ans).toFixed(2)) / parseFloat(ret[8]);
                    //console.log(RemQtyRate);

                    FinalAmounttoPay = parseFloat(FinalAmounttoPay) + parseFloat(RemQtyRate);
                    //console.log("4->" + FinalAmounttoPay);
                    break exit_for1; ;

                }


                PreviousGridQty = parseFloat(PreviousGridQty) + parseFloat(ret[8]); // Previous Grid Quantity
                //console.log("5->" + PreviousGridQty);

                //console.log(FinalAmounttoPay);
            } //if (!ret[2].toLowerCase().includes("silver")) {



        }

        $('#gold-amt').val(parseFloat(FinalAmounttoPay).toFixed(2));
        

    }
    catch (e) {
        //alert1(e);
    }


}



function OnError_Grm(request, status, error) {
    stopSpinner();
    //alert1("error : " + error);
}


//function FinalAmounttoPay() {
//    
//}




