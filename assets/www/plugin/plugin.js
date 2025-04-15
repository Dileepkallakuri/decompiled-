'use strict';
var iPhoneInstallOverlay = (function(document, localStorage) {
  var defaultConfig = {
    showOnReload: true,
    appIconURL: './images/cab.svg',
    spritesURL: './images/mobile-sprite.png',
    blurElement: '',
    appName: 'Your App Name',
    addText: 'and tap on "Add to Home Screen"',
    previewText: 'Preview in browser'
  }

  var isiPhoneSafari = navigator.userAgent && !navigator.userAgent.match('CriOS') && navigator.userAgent.match(/iPhone/i);

  var isModeFullscreen = 'standalone' in window.navigator && window.navigator.standalone !== true;

  var DOM_TEMPLATE = "\
  <div class=\"add-to-home\">\
    <div class = \"homescreen-text\">To install tap\
      <div class = \"icon-addToHome sprite-mobile\" style=\"background-image:url({spritesURL})\"></div> and find \
      <br /> {addText}&nbsp;&nbsp;<img src='./plugin/add.png' width='50px'/>\
    </div>\
    <div class = \"icon-homePointer sprite-mobile\"  style=\"background-image:url({spritesURL})\"></div>\
  </div>\
  ";

  function showOverlay() {
    document.querySelector(".add-to-home").style.display = 'block';
    document.querySelector(defaultConfig.blurElement).classList.add('blur');
  }

  function hideOverlay() {
    if (!defaultConfig.showOnReload) {
      localStorage.setItem('overlayStatus', 'hidden');
    }
    document.querySelector(".add-to-home").style.display = 'none';
    document.querySelector(defaultConfig.blurElement).classList.remove('blur');
  }

  function replaceString(obj, str) {
    var retStr = str;
    Object.keys(obj).forEach(function(key) {
      var regexPattern = '{' + key + '}';
      retStr = retStr.replace(new RegExp(regexPattern, 'g'), obj[key]);
    });
    return retStr;
  }

  function initDom(config) {
    var dom = replaceString(config, DOM_TEMPLATE);
    var wrapper = document.createElement('div');
    wrapper.innerHTML = dom;
    document.body.appendChild(wrapper);
    if (isiPhoneSafari && isModeFullscreen) {
      if (!defaultConfig.showOnReload && localStorage.getItem('overlayStatus') === 'hidden') {
        return;
      }
      showOverlay(config);
    }
  }

  function initClickEvents() {
    document.querySelector(".add-to-home .browser-preview").addEventListener("click", hideOverlay);
  }

  return {
    init: function() {
      var config = arguments.length <= 0 || arguments[0] === undefined ? defaultConfig : arguments[0];
      if (!config.blurElement) {
        console.error('Blur Element is required in config');
        return;
      }
      initDom(Object.assign(defaultConfig, config));
      initClickEvents();
    },
    hideOverlay: hideOverlay,
    showOverlay: showOverlay
  }
})(document, localStorage);
