import 'package:flutter/material.dart';
import '../../enums/widget_color_enum.dart';

class BluePage extends StatelessWidget {
  const BluePage({super.key});

  static const String route = '/blue-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetColorEnum.blue.title),
        backgroundColor: WidgetColorEnum.blue.color,
      ),
      body: Center(
          child: Text(
        WidgetColorEnum.blue.title,
        style: TextStyle(
          color: WidgetColorEnum.blue.color,
        ),
      )),
    );
  }
}
