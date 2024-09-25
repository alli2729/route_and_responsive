import 'package:flutter/material.dart';
import '../../enums/widget_color_enum.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  static const String route = '/orange-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(WidgetColorEnum.orange.title),
        backgroundColor: WidgetColorEnum.orange.color,
      ),
      body: Center(
          child: Text(
        WidgetColorEnum.orange.title,
        style: TextStyle(
          color: WidgetColorEnum.orange.color,
        ),
      )),
    );
  }
}
