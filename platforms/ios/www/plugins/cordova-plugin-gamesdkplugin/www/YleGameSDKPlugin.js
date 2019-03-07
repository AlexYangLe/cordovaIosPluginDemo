cordova.define("cordova-plugin-gamesdkplugin.YleGameSDKPlugin", function(require, exports, module) {
var exec = require('cordova/exec');

function GameSDK() {};

//GameSDK.prototype.coolMethod = function (name,userNo, success, error) {
//    exec(success, error, 'GameSDKPlugin', 'coolMethod', [name,userNo]);
//};

GameSDK.prototype.coolMethod = (name,userNo, success, error)=>{
exec(success, error, 'GameSDKPlugin', 'coolMethod', [name,userNo]);
};

var gameSDKModel = new GameSDK();
module.exports = gameSDKModel;

});
