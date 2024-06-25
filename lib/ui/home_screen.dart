import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: ElevatedButton(onPressed: 
        () => FlutterOverlayWindow.showOverlay(alignment: OverlayAlignment.topLeft,
                height: 100,
                width: 100,
                enableDrag: true,)
      , child: Text('Ovelay app')),)),
    );
  }
}