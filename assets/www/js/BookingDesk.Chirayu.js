   function CallWebServiceFromJqueryBookingDesk() {
           try
           {
				//alert('hi');
				//startSpinner();

               $.ajax({
                   type: "GET",
                   url: localStorage.webPanel + "/WebServiceBookingDesk.asmx/getBookingDeskMessage?username=" + localStorage.appnameWithMiniadminId,
                   dataType: "text",
                   crossDomain: true,
                   processData: false,
                   success: OnSuccessBookingDesk,
                   error: OnErrorBookingDesk,
                   cache: false
               });
           }
           catch(e)
           {
               //alert("CallWebServiceFromJquery " + e);
           }


        }

        var convertBookingDesk = function(convert){

		return $("<span />", { html: convert }).text();
    
		};

		var BookingDesk = "";
		
		function OnSuccessBookingDesk(data, status) {
        //alert(data);
        try {
			//stopSpinner();
            var messages = data.split("|");

            if (typeof messages != 'undefined') {
			
				
					//var zebra = document.getElementById("gvDataLiveRateMessage");
            
				//var trow;

				var msg = messages[1];	
				if (msg.length > 5)
				{
					
					//alert(msg);
					var trowString = convertBookingDesk(msg);
						BookingDesk = trowString;
					$("#gvDataBookingDesk").html(trowString);
					myScroll.refresh();
					
					//trowString.prependTo(zebra);
					//trow = $(trowString);
					//alert(trow);
					//trow.prependTo(zebra);
				}
				else{
					BookingDesk = "";
					
				}
				

            }
			else{
				BookingDesk = "";
				
			}

        }
        catch (e) {
             //alert("OnSuccess" + e);
        }


    }
	



        function OnErrorBookingDesk(request, status, error) {
			//stopSpinner();
            //alert("Webservice Error: " + request.statusText);
        }

		
		

$(document).ready(function () {
    CallWebServiceFromJqueryBookingDesk();
});