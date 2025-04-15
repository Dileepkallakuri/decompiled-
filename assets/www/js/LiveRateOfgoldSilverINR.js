		var oldDataGoldSilverINR = "";
		var urlLinkGoldSilverINR = "http://mobiletradingbroadcast.arihantspot.com:8888/VOTSBroadcast/Services/xml/GetLiveRate";
		var tableElementGoldSilverINR = "gvDataGoldSilverINR";
		
		function removeAllRowsFromTableGoldSilverINR() {

            $("#" + tableElementGoldSilverINR).empty();
			//$("#gvDataGoldSilverINR").empty();

        }
		
		function CallWebServiceFromJqueryGoldSilverINR() {
           try
           {
				//alert('hi');
               $.ajax({
                   type: "GET",
                   url: urlLinkGoldSilverINR,
                   dataType: "text",
                   crossDomain: true,
                   processData: false,
                   success: OnSuccessGoldSilverINR,
                   error: OnErrorGoldSilverINR,
                   cache: false
               });
           }
           catch(e)
           {
               //alert("CallWebServiceFromJquery " + e);
           }


        }
		
		function OnSuccessGoldSilverINR(data, status) {
            //alert(data);
                try {
					//alert('1');
                    var messages = data.split("\\u000d\\u000a");


                    if (typeof oldDataGoldSilverINR != 'undefined') {

                    }
                    else {
                        //alert("1");
                        oldDataGoldSilverINR = data.toString();
                    }
					
					 if (oldDataGoldSilverINR != '') {

                    }
                    else {
                        //alert("1");
                        oldDataGoldSilverINR = data.toString();
                    }
					
					//alert('2');
					
					
                    var messagesOld = oldDataGoldSilverINR.split("\\u000d\\u000a");

                    if (typeof messages != 'undefined') {
                        if (maxRows == 0) {
                            maxRows = messages.length;
                        }

                        removeAllRowsFromTableGoldSilverINR();
                        //var zebra = document.getElementById("gvDataGoldSilverINR");
						var zebra = document.getElementById(tableElementGoldSilverINR);
						//alert('3');
                        var trow;
						//GOLD
						    var ret = messages[0].split("\\u0009");
                            var oldRet;
							var trowString = "";
                            oldRet = messagesOld[0].split("\\u0009");
                            if (typeof ret[1] != 'undefined') {
                               
                                
													if (ret[3] > oldRet[3]) {
														trowString = trowString + "<table width=\"100%\"><tr><td align=\"center\" width=\"33.33%\"><table  width=\"100%\" bgcolor=\"#00D600\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr style=\"border: 1px solid #262626;\"><td class=\"customfont\" style=\"color:white;text-align:center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td>"
													}
													else if (ret[3] < oldRet[3]) {
														trowString = trowString + "<table width=\"100%\"><tr><td align=\"center\"  width=\"33.33%\"><table  width=\"100%\" bgcolor=\"red\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr style=\"border: 1px solid #262626;\"><td class=\"customfont\" style=\"color:white;text-align:center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td>"
													}
													else {
														trowString = trowString +  "<table width=\"100%\"><tr><td align=\"center\" width=\"33.33%\" ><table  width=\"100%\" bgcolor=\"#262626\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr style=\"border: 1px solid #262626;\"><td class=\"customfont\" style=\"color:white;text-align:center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td>"
													}
													
								
							}
							
							//alert('4');
							//SILVER
							ret = messages[1].split("\\u0009");
                            oldRet = messagesOld[1].split("\\u0009");
                            if (typeof ret[1] != 'undefined') {
                                
                                
													if (ret[3] > oldRet[3]) {
														
														trowString = trowString + "<td align=\"center\"  width=\"33.33%\" ><table  width=\"100%\" bgcolor=\"#00D600\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr><td class=\"customfont\" style=\"color:white;text-align: center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td>"

													}
													else if (ret[3] < oldRet[3]) {
														trowString = trowString + "<td align=\"center\"  width=\"33.33%\"><table  width=\"100%\" bgcolor=\"red\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr><td class=\"customfont\" style=\"color:white;text-align: center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td>"
													}
													else {
														trowString = trowString + "<td align=\"center\"  width=\"33.33%\"><table  width=\"100%\" bgcolor=\"#262626\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr><td class=\"customfont\" style=\"color:white;text-align: center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td>"
													}
													
								
							}
							//alert('5');
							//INR
							ret = messages[2].split("\\u0009");
                            oldRet = messagesOld[2].split("\\u0009");
                            if (typeof ret[2] != 'undefined') {
                                var trowString;
                                
													if (ret[3] > oldRet[3]) {
														
														
														trowString = trowString + "<td align=\"center\"  width=\"33.33%\"><table  width=\"100%\" bgcolor=\"#00D600\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr><td class=\"customfont\" style=\"color:white;text-align: center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td></tr></table>"

													}
													else if (ret[3] < oldRet[3]) {
														
														trowString = trowString + "<td align=\"center\"  width=\"33.33%\"><table  width=\"100%\" bgcolor=\"red\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr><td class=\"customfont\" style=\"color:white;text-align: center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td></tr></table>"
													}
													else {
														
														trowString = trowString + "<td align=\"center\"  width=\"33.33%\"><table  width=\"100%\" bgcolor=\"#262626\" style=\"border: 1px solid #FFD700;border-right: 1px solid #FFD700;\"><tr><td class=\"customfont\" style=\"color:white;text-align: center;font-size: 100%;\">" + ret[1] + "</td></tr><tr><td style=\"color:white;text-align: center;font-size: 170%;\">" + ret[3] + "</td></tr></table></td></tr></table>"
													}
													

								
							}
							//alert('6');
						
							//trowString = trowString + "<br/><br/><br/>";
							trow = $(trowString);
							trow.prependTo(zebra);
							oldDataGoldSilverINR = data.toString();
							//alert('7');
                    }
					
					
                }
                catch (e) {
                    //alert("OnSuccess" + e);
                }
            
           
        }



        function OnErrorGoldSilverINR(request, status, error) {
            //alert("Webservice Error: " + request.statusText);
        }