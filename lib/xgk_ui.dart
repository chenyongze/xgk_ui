
import 'dart:async';

import 'package:flutter/services.dart';

class XgkUi {
  static const MethodChannel _channel =
      const MethodChannel('xgk_ui');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
