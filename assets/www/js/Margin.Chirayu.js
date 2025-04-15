   function CallWebServiceFromJqueryMargin() {
           try
           {
				//alert('hi');
				//startSpinner();

               //alert(localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/getFixedFreeCreditMargin/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("password") + "");

               $.ajax({
                   type: "GET",
                   url: localStorage.ipAddressOrder + ":" + localStorage.step2Port + "/VOTSMobile/Services/xml/getFixedFreeCreditMargin/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("username") + "/" + window.localStorage.getItem("password") + "",
                   dataType: "text",
                   crossDomain: true,
                   processData: false,
                   success: OnSuccessMargin,
                   error: OnErrorMargin,
                   cache: false
               });
           }
           catch(e)
           {
               //alert("CallWebServiceFromJquery " + e);
           }


        }


        var maxRows = 0;

        var convertMargin = function(convert){

		return $("<span />", { html: convert }).text();
    
		};

		
		
		function OnSuccessMargin(data, status) {
        //alert(data);
        try {
			//stopSpinner();
			
//                var messages1 = data.replace(/"/g, ' ');
//				messages1 = messages1.replace(/,/g,"<br/><br/>");
            //                $("#gvDataMargin").html(messages1);



            var zebra_Margin = document.getElementById("gvDataMargin");
            var trow_Margin;
            var trowString_Margin = "";


            data = data.substring(1, data.length - 1);
            var array_splitcomma = data.split(",");

            for (i = 0; i < array_splitcomma.length; i++) {

                var Result_array_splitcomma = array_splitcomma[i].toString();
                //alert(monank + "123");

                var array_splitcolon = Result_array_splitcomma.split(":");
                //alert(array_splitcolon[0] + " mnk " + array_splitcolon[1]);


                trowString_Margin = trowString_Margin +
                            "<tr>" +
                                "<td class=\"brad\">" + array_splitcolon[0] + "</td>" +
                                "<td class=\"bradd\">" + array_splitcolon[1] + "</td>" +
                            "</tr>";


            }


            trow_News = $(trowString_Margin);
            trow_News.prependTo(zebra_Margin);


            
        }
        catch (e) {
             //alert("OnSuccess" + e);
        }


    }
	



        function OnErrorMargin(request, status, error) {
			//stopSpinner();
            //alert("Webservice Error: " + request.statusText);
        }

		
		

$(document).ready(function () {
    CallWebServiceFromJqueryMargin();
});