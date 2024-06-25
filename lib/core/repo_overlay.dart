import 'dart:developer';

import 'package:flutter_overlay_window/flutter_overlay_window.dart';

class RepoOverlay {
  void runOverlayWindow() async {
    if(await FlutterOverlayWindow.isActive()){
      FlutterOverlayWindow.closeOverlay();
      log('go close');
    } else {
      FlutterOverlayWindow.showOverlay(alignment: OverlayAlignment.topLeft,
                height: 100,
                width: 100,
                enableDrag: true,);
      log('go show');
    }
  }
}