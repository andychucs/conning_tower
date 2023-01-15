import 'dart:typed_data';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'kcHandler.dart';

const String interceptJS ='''

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


void kancolleMessageHandle(String message){
  String responseURL;
  if(true){
    const start = "conning_tower_responseURL:";
    const end = "conning_tower_readyState:";
    final startIndex = message.indexOf(start);
    final endIndex = message.indexOf(end, startIndex + start.length);
    String responseURL2 = message.substring(startIndex + start.length, endIndex);
    print("responseURL:");
    print(responseURL2);
    responseURL = responseURL2;
  }
  if(true){
    const start = "conning_tower_readyState:";
    const end = "conning_tower_responseText:";
    final startIndex = message.indexOf(start);
    final endIndex = message.indexOf(end, startIndex + start.length);
    String readyState = message.substring(startIndex + start.length, endIndex);
    print("readyState:");
    print(readyState);
  }
  if(true){
    const start = "conning_tower_responseText:";
    const end = "conning_tower_END";
    final startIndex = message.indexOf(start);
    final endIndex = message.indexOf(end, startIndex + start.length);
    String responseText = message.substring(startIndex + start.length, endIndex);
    String result = responseText.replaceAll('svdata=', '');
    print("KC JSON:");
    print(json.decode(result));
    kcJsonToDb(responseURL,result);
  }
}

Uint8List convertStringToUint8List(String str) {
  final List<int> codeUnits = str.codeUnits;
  final Uint8List unit8List = Uint8List.fromList(codeUnits);
  return unit8List;
}
Future<WebResourceResponse?> interceptRequest(
    WebResourceRequest orgRequest) async {
  var kcResponse = await http.get(orgRequest.url, headers: orgRequest.headers);
  return WebResourceResponse(
      contentEncoding: 'gzip',
      contentType: 'application/javascript',
      data: convertStringToUint8List(kcResponse.body + interceptJS),
      headers: kcResponse.headers,
      reasonPhrase: kcResponse.reasonPhrase,
      statusCode: kcResponse.statusCode);
}