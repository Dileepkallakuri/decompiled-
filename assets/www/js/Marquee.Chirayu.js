	function CallWebServiceFromJqueryMarquee() {
            try {
                //alert("CallWebServiceFromJqueryMarquee");
                $.ajax({
                    type: "GET",
                    url: "http://message.arihantspot.com/WebServiceGetMarquee.asmx/getMarquee",
                    dataType: "text",
                    crossDomain: true,
                    processData: false,
                    success: OnSuccessMarquee,
                    error: OnErrorMarquee,
                    cache: false
                });
            }
            catch (e) {
                //alert("CallWebServiceFromJqueryMarquee " + e);
            }


        }

        function OnSuccessMarquee(data, status) {
            //alert(data);
            try {

                var message = data.split("|");

                if (typeof message != 'undefined') {

                    removeAllRowsFromMarquee();

                    var zebra = document.getElementById("marqueeData");
                    var trow;
                    var trowString = "";
                    trowString = trowString + convert(message[1]);

                    //trow = $(trowString);
                    //trow.prependTo(zebra);

                    $("#marqueeData").html(trowString);
                    $('.marquee').marquee({
                        //speed in milliseconds of the marquee
                        duration: 15000,
                        //gap in pixels between the tickers
                        gap: 50,
                        //time in milliseconds before the marquee will start animating
                        delayBeforeStart: 0,
                        //'left' or 'right'
                        direction: 'left',
                        //true or false - should the marquee be duplicated to show an effect of continues flow
                        duplicated: true,
                        pauseOnHover: true
                    });
                }


            }
            catch (e) {
                // alert("OnSuccessMarquee" + e);
            }


        }



        function OnErrorMarquee(request, status, error) {
            //alert("Webservice Error: " + request.statusText);
        }

        function removeAllRowsFromMarquee() {

            $("#marqueeData").empty();

        }

        var convert = function (convert) {

            return $("<span />", { html: convert }).text();

        };
		
		
		
		$(document).ready(function () {
            
				CallWebServiceFromJqueryMarquee();
                var timerMarquee = setInterval("CallWebServiceFromJqueryMarquee()", 30000);
				
          });
		  
		