import 'package:flutter/material.dart';

enum WidgetColorEnum {
  red('Red', Colors.red),
  blue('Blue', Colors.blue),
  green('Green', Colors.green),
  orange('Orange', Colors.orange);

  const WidgetColorEnum(this.title, this.color);

  final String title;
  final Color color;
}
