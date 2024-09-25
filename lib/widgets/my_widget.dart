import 'package:flutter/material.dart';
import '../enums/widget_color_enum.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.onTap,
    required this.value,
  });

  final void Function() onTap;
  final WidgetColorEnum value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: ColoredBox(
          color: value.color.withOpacity(0.3),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              value.title,
              style: TextStyle(
                color: value.color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
