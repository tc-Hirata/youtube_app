import 'package:flutter/material.dart';

class VideoDetallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
      ),
      body: Center(
        child: Container(
          child: Text('動画'),
        ),
      ),
    );
  }
}