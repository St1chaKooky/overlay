import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:overlay/ui/home_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  if(!await FlutterOverlayWindow.isPermissionGranted()){
      await FlutterOverlayWindow.requestPermission();
    }
  
  runApp(const HomeScreen());
}

@pragma("vm:entry-point")
void overlayMain() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Container(
          child: Text('sasa'),
        color: Colors.amber,
      ),
      ),
    ),
  );
}


