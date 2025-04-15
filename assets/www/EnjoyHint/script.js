
//initialize instance
var enjoyhint_instance = new EnjoyHint({});

//simple config.
//Only one step - highlighting(with description) "New" button
//hide EnjoyHint after a click on the button.
var enjoyhint_script_steps = [
    {
        "next #EnjoyHint1": 'Rate Alert'
    },
    {
        "next #EnjoyHint2": 'WhatsApp Chat'
    },
    {
        "next #EnjoyHint3": 'Menu'
    },
    {
        "next #EnjoyHint4": 'Login'
    }
//    ,
//    {
//        "click .btn-success" : "For example, let's set a handler for a button click event.<br>" +
//            "{<br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' click .btn-success '</text> : <text style='color: #2bff3c'>' Some description '</text> <br>" +
//            "}<br>" +
//            "Click the button and move on.",
//        showSkip: false
//    },
//    {
//        "next #button6" : "You can highlight blocks by selecting them in a circle. <br>" +
//            "<text style='color: #00ebe7'>shape</text> - you can define shape of highligting (rectangular||circle)<br>" +
//            "{<br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' next #selector '</text> : <text style='color: #2bff3c'>' Some description ',</text> <br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' shape '</text> :  <text style='color: #2bff3c'>' circle '</text> <br>" +
//            "}<br>" +
//            "The circle radius seems to be too small.<br> Click 'Next' to fix it.",
//        shape : 'circle'
//    },
//    {
//        "next #mini_button" : "At this step we fix radius<br>" +
//            "<text style='color: #00ebe7'>radius</text> - sets the size of the circle radius<br>" +
//            "{<br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' next #selector '</text> : <text style='color: #2bff3c'>' Some description ',</text> <br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' shape '</text> :  <text style='color: #2bff3c'>' circle '</text> <br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' radius '</text> : 80<br>" +
//            "}<br>",
//        shape : 'circle',
//        radius: 80
//    },
//    {
//        "next #animationSpeed" : "Sometimes you need to scroll the page either very slowly (as we've just done) or very fast.<br>" +
//            "<text style='color: #00ebe7'>scrollAnimationSpeed</text> - sets the speed for the scroll page<br>" +
//            "{<br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' next #selector '</text> : <text style='color: #2bff3c'>' Some description ',</text> <br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' scrollAnimationSpeed '</text> : 2500<br>" +
//            "}<br>",
//        scrollAnimationSpeed : 2500
//    },
//    {
//        "key #suc_input" : "You can attach handlers to keyboard events.<br>" +
//            "<text style='color: #00ebe7'>keyCode</text> - key code for any 'key' event.<br>" +
//            "{<br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' key #selector '</text> : <text style='color: #2bff3c'>' Some description ',</text> <br>" +
//            "<text style='color: #00a6eb'>&nbsp &nbsp ' keyCode '</text> : 13<br>" +
//            "}<br>" +
//            "Enter some text and press 'Enter'",
//        keyCode : 13
//    }

];

//set script config
enjoyhint_instance.set(enjoyhint_script_steps);

//run Enjoyhint script
enjoyhint_instance.run();