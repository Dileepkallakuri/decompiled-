var admobid = {};

// TODO: replace the following ad units with your own
if( /(android)/i.test(navigator.userAgent) ) {
  admobid = { // for Android
    banner: 'ca-app-pub-1572723989996112/6420088381',
    interstitial: 'ca-app-pub-1572723989996112/4875598383',
    rewardvideo: '',
  };
} else if(/(ipod|iphone|ipad)/i.test(navigator.userAgent)) {
  admobid = { // for iOS
    banner: 'ca-app-pub-1572723989996112/6420088381',
    interstitial: 'ca-app-pub-1572723989996112/4875598383',
    rewardvideo: '',
  };
} else {
  admobid = { // for Windows Phone
    banner: 'ca-app-pub-1572723989996112/6420088381',
    interstitial: 'ca-app-pub-1572723989996112/4875598383',
    rewardvideo: '',
  };
}

function initApp() {
						  if (! AdMob ) { alert( 'admob plugin not ready' ); return; }

						  // this will create a banner on startup
						  AdMob.createBanner( {
							adId: admobid.banner,
							position: AdMob.AD_POSITION.BOTTOM_CENTER,
							overlap: false,
							offsetTopBar: false,
							bgColor: 'black'
						  } );

						AdMob.prepareInterstitial({
							adId: admobid.interstitial,
							autoShow: false
						});
  
}

function showInterstitialFunc(){
						 // check and show it at end of a game level
				AdMob.isInterstitialReady(function(isready){
					if(isready)
					{
						AdMob.showInterstitial();
						navigator.app.exitApp();
					}	
					else {
						navigator.app.exitApp();
					}
				});
	}
	
	
if(( /(ipad|iphone|ipod|android|windows phone)/i.test(navigator.userAgent) )) {
    document.addEventListener('deviceready', initApp, false);
} else {
    initApp();
}





