import 'package:flutter/material.dart';
import '../../enums/widget_color_enum.dart';

class RedPage extends StatelessWidget {
  const RedPage({super.key});

  static const String route = '/red-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetColorEnum.red.title),
        backgroundColor: WidgetColorEnum.red.color,
      ),
      body: Center(
          child: Text(
        WidgetColorEnum.red.title,
        style: TextStyle(
          color: WidgetColorEnum.red.color,
        ),
      )),
    );
  }
}
