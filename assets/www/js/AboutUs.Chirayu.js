   function CallWebServiceFromJqueryAboutUs() {
           try
           {
				//alert('hi');
				startSpinner();

				//alert(localStorage.webPanel + "/WebServiceAboutUs.asmx/getAboutUsMessage?username=" + localStorage.appnameWithMiniadminId);

               $.ajax({
                   type: "GET",
                   url: localStorage.webPanel + "/WebServiceAboutUs.asmx/getAboutUsMessage?username=" + localStorage.appnameWithMiniadminId,
                   dataType: "text",
                   crossDomain: true,
                   processData: false,
                   success: OnSuccessAboutUs,
                   error: OnErrorAboutUs,
                   cache: false
               });
           }
           catch(e)
           {
               //alert("CallWebServiceFromJquery " + e);
           }


        }

        var convertAboutUs = function(convert){

		return $("<span />", { html: convert }).text();
    
		};

		var AboutUs = "";
		
		function OnSuccessAboutUs(data, status) {
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
					var trowString = convertAboutUs(msg);
						AboutUs = trowString;
					$("#gvDataAboutUs").html(trowString);
					myScroll.refresh();
					
					//trowString.prependTo(zebra);
					//trow = $(trowString);
					//alert(trow);
					//trow.prependTo(zebra);
				}
				else{
					AboutUs = "";
					
				}
				

            }
			else{
				AboutUs = "";
				
			}

        }
        catch (e) {
             //alert("OnSuccess" + e);
        }


    }
	



        function OnErrorAboutUs(request, status, error) {
			//stopSpinner();
            //alert("Webservice Error: " + request.statusText);
        }

		
		

$(document).ready(function () {
    CallWebServiceFromJqueryAboutUs();
});