import 'dart:convert';
import 'dart:io';

import 'package:conning_tower/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:validators/validators.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'constants.dart';
import 'generated/l10n.dart';

Future<bool> autoAdjustWindowV2(WebViewController controller,
    {bool force = false}) async {
  //Adjust Kancolle window
  if ((inKancolleWindow && !autoAdjusted && enableAutoProcess) ||
      (force && inKancolleWindow)) {
    if (Platform.isIOS) {
      await controller.runJavascript('''
((\$, _) => {
    const html = \$.documentElement,
        gf = \$.getElementById('flashWrap');
    if (!gf) return;
    const gs = gf.style,
        gw = gf.offsetWidth,
        gh = gw * .6;
    let vp = \$.querySelector('meta[name=viewport]'),
        t = 0;
    vp || (vp = \$.createElement('meta'), vp.name = 'viewport', \$.querySelector('head').appendChild(vp));
    vp.content = 'width=' + gw;
    'orientation' in _ && html.webkitRequestFullscreen && html.webkitRequestFullscreen();
    html.style.overflow = 'hidden';\$.body.style.cssText = 'min-width:0;padding:0;margin:0;overflow:hidden;margin:0';
    gs.position = 'fixed';
    gs.marginRight = 'auto';
    gs.marginLeft = 'auto';
    gs.top = '0px';
    gs.right = '0';
    gs.zIndex = '100';
    gs.transformOrigin = 'center top';
    if (!_.kancolleFit) {
        const k = () => {
            const w = html.clientWidth,
                h = _.innerHeight;
            w / h < 1 / .6 ? gs.transform = 'scale(' + w / gw + ')' : gs.transform = 'scale(' + h / gh + ')';
            w < gw ? gs.left = '-' + (gw - w) / 2 + 'px' : gs.left = '0'
        };
        _.kancolleFit = k
    }
    kancolleFit()

    document.getElementById('sectionWrap').style.display = 'none';
})(document, window)
''');
    } else if (Platform.isAndroid) {
      await controller.runJavascript('''
((\$, _) => {
    const html =\$.documentElement,
        gf = \$.getElementById('game_frame');
    if (!gf) return;
    const gs = gf.style,
        gw = gf.offsetWidth,
        gh = gw * .6;
    let vp = \$.querySelector('meta[name=viewport]'),
        t = 0;
    vp || (vp = \$.createElement('meta'), vp.name = 'viewport', \$.querySelector('head').appendChild(vp));
    vp.content = 'width=' + gw;
    'orientation' in _ && html.webkitRequestFullscreen && html.webkitRequestFullscreen();
    html.style.overflow = 'hidden';\$.body.style.cssText = 'min-width:0;padding:0;margin:0;overflow:hidden;margin:0';\$.querySelector('.dmm-ntgnavi').style.display = 'none';\$.querySelector('.area-naviapp').style.display = 'none';
    gs.position = 'fixed';
    gs.marginRight = 'auto';
    gs.marginLeft = 'auto';
    gs.top = '-16px';
    gs.right = '0';
    gs.zIndex = '100';
    gs.transformOrigin = 'center top';
    if (!_.kancolleFit) {
        const k = () => {
            const w = html.clientWidth,
                h = _.innerHeight;
            w / h < 1 / .6 ? gs.transform = 'scale(' + w / gw + ')' : gs.transform = 'scale(' + h / gh + ')';
            w < gw ? gs.left = '-' + (gw - w) / 2 + 'px' : gs.left = '0'
        };
        _.addEventListener('resize', () => {
            clearTimeout(t);
            t = setTimeout(k, 10)
        });
        _.kancolleFit = k
    }
    kancolleFit()
})(document, window)
''');
    }
    autoAdjusted = true;
    Fluttertoast.showToast(msg: S.current.FutureAutoAdjustWindowSuccess);
    print("Auto adjust success");
    allowNavi = false;
    return true;
  }
  print("autoAdjustWindow fail");
  return false;
}

getResizeScale(double height, double width) {
  //Get Kancolle iframe resize scale
  var scale = (height * width) / kKancollePixel;
  if (scale < 0.5) {
    while (kKancolleWidth * scale < kWebviewWidth ||
        kKancolleHeight * scale < kWebviewHeight) {
      scale = scale + 0.05;
    }
    return scale;
  } else {
    while (kKancolleWidth * scale > kWebviewWidth ||
        kKancolleHeight * scale > kWebviewHeight) {
      scale = scale - 0.05;
    }
    return scale;
  }
}

String getHomeUrl() {
  String homeUrl = 'data:text/html;base64,$kHomeBase64';

  // If user never load dmm website, default home page show google. Might be helpful for app store review.
  if (loadedDMM) homeUrl = 'data:text/html;base64,${base64Encode(const Utf8Encoder().convert(kHome.replaceAll(kGoogle, kGameUrl)))}';

  if (enableAutLoadKC) {
    homeUrl = kGameUrl;
  } else if (isURL(customHomeUrl)) {
    homeUrl = customHomeUrl;
  }
  else if (customHomeBase64Url.isNotEmpty){
    debugPrint('getHomeUrl:$customHomeBase64Url');
    customHomeBase64 = base64Encode(const Utf8Encoder().convert(kHome.replaceAll(kGoogle, customHomeBase64Url)));
    homeUrl = 'data:text/html;base64,$customHomeBase64';
  }
  return homeUrl;
}

List<DeviceOrientation>? getDeviceOrientation(int? index) {
  if (index == -1) return null;
  if (index == 0) return [DeviceOrientation.landscapeLeft];
  if (index == 1) return [DeviceOrientation.landscapeRight];
  if (index == 2) return [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown];
  return DeviceOrientation.values;
}

// double getFabPositionAngle(Enum position) {
//   double angle = 0;
//   switch (position) {
//     case FabPosition.left:
//       angle = 180;
//       break;
//     case FabPosition.right:
//       angle = 0;
//       break;
//     case FabPosition.top:
//       angle = 270;
//       break;
//     case FabPosition.bottom:
//       angle = 90;
//       break;
//     case FabPosition.leftTop:
//       angle = 225;
//       break;
//     case FabPosition.rightTop:
//       angle = 315;
//       break;
//     case FabPosition.leftBottom:
//       angle = 135;
//       break;
//     case FabPosition.rightBottom:
//       angle = 45;
//       break;
//   }
//   return angle;
// }
