import 'package:flutter/material.dart';
import 'carousel_slider_widget.dart';
import 'image_svg.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Hello!',
                style: TextStyle(fontFamily: 'TiroDevanagariSanskrit'),
              ),
            ),
            body: ListView(
              children: const [
                Padding(padding: EdgeInsets.only(top: 5)),
                Text('Первое задание'),
                ImageSVG(),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text('Второе задание'),
                CarouselSliderWidget(),
                Padding(padding: EdgeInsets.only(top: 5)),
              ],
            ))),
  );
}
