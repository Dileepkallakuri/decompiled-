   function CallWebServiceFromJqueryLiveRateMessage() {
           try {
               
				//alert('hi');
				//startSpinner();

               //alert(localStorage.webPanel + "/WebServiceLiveRatePageMessage.asmx/getLiveRatePageMessage?username=" + localStorage.appnameWithMiniadminId);

               $.ajax({ 
                   type: "GET",
                   //url: "http://message.arihantspot.com/WebServiceLiveRatePageMessage.asmx/getLiveRatePageMessage",
                   url: localStorage.s3url + "fixmessage1" + localStorage.s3filename,
                   dataType: "text",
                   crossDomain: true,
                   processData: false,
                   success: OnSuccessLiveRateMessage,
                   error: OnErrorLiveRateMessage,
                   cache: false
               });
           }
           catch(e)
           {
               //alert("CallWebServiceFromJquery " + e);
           } 


        }

        var convertLiveRateMessage = function(convert){

		return $("<span />", { html: convert }).text();
    
		};

		var LiveRateMessage = "";
		
		function OnSuccessLiveRateMessage(data, status) {
        //alert(data);
        try {
			//stopSpinner();
            var messages = data.split("|");

            if (typeof messages != 'undefined') {
			
				
					//var zebra = document.getElementById("gvDataLiveRateMessage");
            
				//var trow;

			// change start
         var messages = data;
			messages = messages.replace('|','');
			messages = messages.replace('|','');
			messages = messages.replace('|','');
			messages = messages.replace('|','');
			// change end

				var msg = messages;
				if (msg.length > 5)
				{
					
					//alert(msg);
					var trowString = convertLiveRateMessage(msg);
						LiveRateMessage = trowString;
						//float_Message();
					    $("#gvDataLiveRateMessage").html(trowString);
					
					
					//trowString.prependTo(zebra);
					//trow = $(trowString);
					//alert(trow);
					//trow.prependTo(zebra);
				}
				else{
					LiveRateMessage = "";
					
				}
				

            }
			else{
				LiveRateMessage = "";
				
			}

        }
        catch (e) {
             //alert("OnSuccess" + e);
        }


    }
	



        function OnErrorLiveRateMessage(request, status, error) {
			//stopSpinner();
            //alert("Webservice Error: " + request.statusText);
        }

		 $(document).ready(function () {
   
				CallWebServiceFromJqueryLiveRateMessage();			
              
          });
	
		