const String autoScaleAndroidJS = "assets/js/autoScaleAndroid.js";
const String autoScaleIOSJS = "assets/js/autoScaleIOS.js";
const String httpRedirectJS = "assets/js/httpRedirect.js";
const String kAppStoreID = '6446080475';
const String kXUrl = 'https://twitter.com/conntower';
const String kGitHubOpenUrl = 'https://github.com/andychucs/conning_tower';
const String kGitHubDocsUrl = 'https://github.com/conntower/docs';
const String kDocsUrl = 'https://conntower.github.io/docs';
const String kChromeUA =
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36";
const String kGameUrl =
    'http://www.dmm.com/netgame/social/-/gadgets/=/app_id=854854';
const String kDMMOSAPIDomain = "osapi.dmm.com";
const String kDMMDomain = "dmm.com";
const String kGoogle = 'https://www.google.com/';
const String kInterceptJS ='''

var origOpen = XMLHttpRequest.prototype.open;
XMLHttpRequest.prototype.open = function() {
    this.addEventListener('load', function() {
        if (this.responseURL.includes('/kcsapi/')) {
            KcapiToFlutter(this);
        }
    });
    origOpen.apply(this, arguments);
};
function KcapiToFlutter(data) {
    kcMessage.postMessage("conning_tower_responseURL:"+data.responseURL+"conning_tower_readyState:"+data.readyState+"conning_tower_responseText:"+data.responseText+"conning_tower_END");
}

''';
const bool kIsOpenSource = true;
const kKancolleHeight = 720;
const kKancollePixel = kKancolleHeight * kKancolleWidth;
const kKancolleWidth = 1200;
const String kLocalHomeUrl = "http://localhost:8686";
const int kMaxPinedTaskNum = 10;
const int kMaxTaskNum = 64;
const String kSafariUA =
    "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.1 Safari/605.1.15";

const String kTaskChannelDescription = "Task Notification from ConningTower";

const String kTaskChannelId = "com.conntower.conningtower.task";

const String kTaskChannelName = "ConningTower Task Channel";

const String kTaskJsonExample =
    "https://github.com/conntower/data/blob/main/json/CT_tasks.json";
const String kTaskUrlExample = kIsOpenSource ? "https://andychucs.github.io/kcdata/json/CT_tasks.json" :
    "https://conntower.github.io/data/json/CT_tasks.json";
const String kTaskYamlExample =
    "https://github.com/conntower/data/blob/main/yaml/CT_tasks.yaml";
const String kZeroTime = "00:00:00";
const String muteKancolleJS = "assets/js/muteKancolle.js";
const String unMuteKancolleJS = "assets/js/unMuteKancolle.js";
const String kKcwikiShipsUrl = "https://kcwikizh.github.io/kcdata/ship/ship.json";
const String kKcwikiShipsApi = "https://api.kcwiki.org/ships";

enum DeviceType {
  iPhone,
  iPad,
  iPod,
  mac,
  windows,
  android,
  linux,
  fuchsia,
  undefined
}

enum FunctionName {
  screenShot,
  screenManger,
  hideControls,
  bottomPadding,
  showTaskPage,
  landscapeRight,
  landscapeLeft,
  portrait,
  none
}

enum JoystickAct {
  dragUp,
  dragDown,
  dragRight,
  dragLeft,
  doubleClick,
  longTouch
}

enum JoystickDir { up, down, left, right, center }

enum AppLayout { onlyFAB, onlyJoystick, bothFABJoystick, pure }