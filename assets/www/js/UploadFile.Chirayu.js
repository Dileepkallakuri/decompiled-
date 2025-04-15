var imageURI = "";
var fileType = "";
var imgID = "";

function getImage(fileType1,imgID1) {
	 try{
		 
		 fileType = fileType1;
		 imgID = imgID1;
		 
		 //alert1('getImage');
				 navigator.camera.getPicture(savePhotoLink, function(message) {
		 alert1('get picture failed');
		 }, {
		 quality: 100,
		 destinationType: navigator.camera.DestinationType.FILE_URI,
		 sourceType: navigator.camera.PictureSourceType.PHOTOLIBRARY
		 });

		 //return false;
		 
		 }
		 catch(e)
		 {
			 alert1(e);
			//return false;	 
		 }
 
}


function getCamera(fileType1,imgID1) {
	 try{
		 
		 
		 //alert1('getCamera');
		 fileType = fileType1;
		 imgID = imgID1;
		 
		 //alert1('getImage');
				 navigator.camera.getPicture(savePhotoLink, function(message) {
		 alert1('get picture failed');
		 }, {
		 quality: 100,
		 destinationType: navigator.camera.DestinationType.FILE_URI,
		 sourceType: navigator.camera.PictureSourceType.CAMERA
		 });

		 
			//return false;
		 }
		 catch(e)
		 {
			 alert1(e);
		//	return false; 
		 }
 
}


function savePhotoLink(imageURIin) {
	
	try{
	//alert1("savePhotoLink");
	imageURI = imageURIin;
	 var image = document.getElementById(imgID);
    image.src = imageURIin;
	//$('img[src="' + oldSrc + '"]').attr('src', newSrc);
	uploadPhoto(fileType);
	
	 }
		 catch(e)
		 {
			 alert1(e);
		//	return false; 
		 }
}
 




function uploadPhoto(FileType) {
	
	
	try{
		
		//alert1("uploadPhoto");
			//startSpinner();
		//alert1(imageURI);
			if (imageURI.lastIndexOf('?') > 0)
			{
				imageURI = imageURI.substr(0,imageURI.lastIndexOf('?'));	
			}
		//alert1(imageURI);	
			//alert1(imageURI);
			var formData = new FormData();
		   
		   formData.append('Username', window.localStorage.getItem("username"));
		   formData.append('Password', window.localStorage.getItem("password"));
		   formData.append('FileType',  FileType);
		   
			
			actualUpload(formData);
		 }
		 catch(e)
		 {
			 alert1(e);
			 
		 }
		 

 }
 
 
 function actualUpload(formData)
 {
	 try{
		 
	 startSpinner();
	 
	 //alert1(actualUpload);
window.resolveLocalFileSystemURL(imageURI, function (fileEntry) {
    //alert1('file open: ' );
	//alert1('location of file from camera : ' + imageURI);
	try{
			
						fileEntry.file(function (file) {
							var oReq = new XMLHttpRequest();
								
								oReq.open("POST", localStorage.miniadminAPI + "/FileUpload", true);
								oReq.onload = function (oEvent) {
									// all done!
									stopSpinner();
									//alert1(oEvent);
									alert1(oReq.response);
									
									//alert1('Order Sent');
									//window.location.href = "HomeScreen.htm";
								};
								
							var reader = new FileReader();
							//alert1('fileEntry.file called');
							reader.onloadend = function(e) {
								  var imgBlob = new Blob([ this.result ], { type: "image/jpeg" } );
								  formData.append('attachment', imgBlob);
								  //formData.append(FileType, imgBlob);
								   
								  //post form call here
								  oReq.send(formData); 
							 };
							 
								reader.readAsArrayBuffer(file);
								
							
						}, function (err) { alert1('error getting fileentry file!' + err); });
					}
			catch(ex)	
			{
				alert1(ex);
				
			}
	
	
}, function (err) { alert1('error getting file ' + err); });
 
 
  }
		 catch(e)
		 {
			 alert1(e);
		//	return false; 
		 }
 
 }


 