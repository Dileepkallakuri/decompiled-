 document.addEventListener("deviceready", onDeviceReadyLogin, false);
 
  function onDeviceReadyLogin() {
      
			try{
				
					var username = window.localStorage.getItem("username");
                    var password = window.localStorage.getItem("password");
                
				CallWebServiceFromJqueryRefreshLogin(username,password);
				
			}
          catch (e) {
               //alert("Error: " + e);
			
            }
    }

	
 function CallWebServiceFromJqueryRefreshLogin(u,p) {
            try {
               
				
                 var ip = window.localStorage.getItem("ip");
               var port = window.localStorage.getItem("port");
				var registrationID = localStorage.getItem('registrationId');
				
			   var MACAddress = "Android," + registrationID;
			   
               if (u != "") {
                   
                       $.ajax({
                           type: "GET",
                           url: "http://mobiletradingorder.arihantspot.com:8888/VOTSMobile/Services/xml/doLogin/" + u + "/" + p + "/" + MACAddress,
                           dataType: "text",
                           crossDomain: true,
                           processData: false,
                           success: OnSuccessLoginRefresh,
                           error: OnErrorLoginRefresh,
                           cache: false
                       });
                   
                   
               }
               else {
               }

            }
            catch (e) {
               // alert("CallWebServiceFromJquery " + e);
            }


        }