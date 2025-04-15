
document.addEventListener('deviceready', this.onDeviceReadyFCM, false);

function onDeviceReadyFCM()
{
	//alert("onDeviceReadyFCM");
	initFCM();

	//alert("call onNotification");
	FCMPlugin.onNotification(function(data){

			//alert( JSON.stringify(data) );

		if(data.wasTapped){
		  //Notification was received on device tray and tapped by the user.
		  //alert( JSON.stringify(data) );
		}else{
		  //Notification was received in foreground. Maybe the user needs to be notified.
		  //alert( JSON.stringify(data) );
		}


		navigator.notification.alert(
                data.message,         // message
                null,                 // callback
                data.title,           // title
                'Ok'                  // buttonName
            );

			try{

				if (data.page.includes("htm"))
				{
					if (data.page != "index.html")
					{

						window.location.assign(data.page);
						return;
					}

				}


			  }
			 catch(e)
			  {
						//alert("OnSuccess : " + data);
			  }





	});

}



function initFCM(){


	//alert("initFCM");

	FCMPlugin.getToken(function(token){

				try{

					//alert("token : " + token);
					var registrationID = "";

					localStorage.setItem('registrationId', token);
					registrationID = token;
					//alert("registrationID : " + registrationID);

					//alert("subscribe : " + localStorage.topicForMessage);

					FCMPlugin.subscribeToTopic('dpgoldratemovement', function(msg){} , function(err){});

				}
			 catch(e)
				  {
							//alert("OnSuccess : " + data);
				  }


	});

}
