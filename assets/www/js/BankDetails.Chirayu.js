   function CallWebServiceFromJqueryBankDetails() {
           try
           {
				//alert('hi');
				startSpinner();
				//alert('hii');
               $.ajax({
                   type: "GET",
                   url: localStorage.webPanel + "/WebServiceBankDetails.asmx/getBankDetailsMessage?username=" + localStorage.appnameWithMiniadminId,
                   dataType: "text",
                   crossDomain: true,
                   processData: false,
                   success: OnSuccessBankDetails,
                   error: OnErrorBankDetails,
                   cache: false
               });
           }
           catch(e)
           {
               //alert("CallWebServiceFromJquery " + e);
           }


        }

        var convertBankDetails = function(convert){

		return $("<span />", { html: convert }).text();
    
		};

		var BankDetails = "";
		
		function OnSuccessBankDetails(data, status) {
        //alert(data);
        try {
			stopSpinner();
            var messages = data.split("|");

            if (typeof messages != 'undefined') {
			
				
					//var zebra = document.getElementById("gvDataLiveRateMessage");
            
				//var trow;

				var msg = messages[1];	
				if (msg.length > 5)
				{
					
					//alert(msg);
					var trowString = convertBankDetails(msg);
						BankDetails = trowString;
					$("#gvDataBankDetails").html(trowString);
					
					
					//trowString.prependTo(zebra);
					//trow = $(trowString);
					//alert(trow);
					//trow.prependTo(zebra);
				}
				else{
					BankDetails = "";
					
				}
				

            }
			else{
				BankDetails = "";
				
			}

			myScroll.refresh();
			
        }
        catch (e) {
             //alert("OnSuccess" + e);
        }


    }
	



        function OnErrorBankDetails(request, status, error) {
			//stopSpinner();
            //alert("Webservice Error: " + request.statusText);
        }

		
		

$(document).ready(function () {
    CallWebServiceFromJqueryBankDetails();
});