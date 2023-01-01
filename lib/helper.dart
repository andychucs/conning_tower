import 'dart:io';
import 'dart:math';

import 'package:conning_tower/pages/home.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'constants.dart';
import 'generated/l10n.dart';

Future<bool> autoAdjustWindow(
  WebViewController controller,
) async {
  //Adjust Kancolle window
  if (inKancolleWindow && !autoAdjusted) {
    int getWebviewSizeCount = 0;
    do {
      kWebviewHeight = await controller
          .runJavaScriptReturningResult('''window.innerHeight;''') as double;
      kWebviewWidth = await controller
          .runJavaScriptReturningResult('''window.innerWidth;''') as double;
      if (kWebviewHeight == 0.0 || kWebviewWidth == 0.0) {
        await Future.delayed(const Duration(seconds: 2));
      } else {
        getWebviewSizeCount = 99;
      }
      print("obtaining webview size");
      getWebviewSizeCount++;
    } while (getWebviewSizeCount < 5);
    var resizeScale = 1.0;
    if (kWebviewHeight != 0.0 && kWebviewWidth != 0.0) {
      resizeScale = getResizeScale(kWebviewHeight, kWebviewWidth);
      autoAdjusted = true;
    } else {
      print("autoAdjustWindow fail");
      return false;
    }
    await controller.runJavaScript(
        '''document.getElementById("spacing_top").style.display = "none";''');
    await controller.runJavaScript(
        '''document.getElementById("sectionWrap").style.display = "none";''');

    if (Platform.isIOS) {
      await controller.runJavaScript(
          //Scale to correct size(ios webkit)
          '''document.getElementById("htmlWrap").style.webkitTransform = "scale($resizeScale,$resizeScale)";''');
    } else if (Platform.isAndroid) {
      await controller.runJavaScript(//Scale to correct size(android chrome)
          '''document.getElementById("htmlWrap").style.transform = "scale($resizeScale,$resizeScale)";''');
    }
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
    scale = 1 - scale;
    return sqrt(scale);
  } else {
    while (kKancolleWidth * scale > kWebviewWidth ||
        kKancolleHeight * scale > kWebviewHeight) {
      scale = scale - 0.05;
    }
    return scale;
  }
}

Future<bool> autoAdjustWindowV2(
  WebViewController controller,
) async {
  //Adjust Kancolle window
  if (inKancolleWindow && !autoAdjusted) {
    if (Platform.isIOS) {
      await controller.runJavaScript('''
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
        _.addEventListener('resize', () => {
            clearTimeout(t);
            t = setTimeout(k, 10)
        });
        _.kancolleFit = k
    }
    kancolleFit()

    document.getElementById('sectionWrap').style.display = 'none';
})(document, window)
''');
    } else if (Platform.isAndroid) {
      await controller.runJavaScript('''
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
